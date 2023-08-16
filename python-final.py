# -*- coding: utf-8 -*-
import pandas as pd 
from matplotlib import pyplot as plt
import sys
import numpy as np
import mysql.connector

DATABASE = None
CURSOR = None

# Kullanıcıdan deger alır, EXIT girildiğinde uygulamayı sonlandırır
def get_input(description):
    user_input = input(description + ":")
    if user_input == 'EXIT':
        print("Uygulama sonlandırıldı.")
        sys.exit(0);
    else:        
        return user_input
    
# Menuyu yazdır
def print_menu():
    print("\n------------------------------------------------------------\n")
    print("[1]- Kullanıcı Oluştur")
    print("[2]- MySQL ( Veritabanı ) İşlemleri")
    print("    [2.1]- Telefon Ekle")
    print("    [2.2]- Telefon Listele")
    print("    [2.3]- Telefon Fiyat Güncelle")
    print("    [2.4]- Telefon Puanla")
    print("    [2.5]- Telefon Puanı sil")
    print("[3]- Grafik İşlemleri")
    print("    [3.1]- Fiyat Puan İlişki Analizi ( Saçılma Grafiği )")
    print("    [3.2]- Markaya Göre Puan Dağılımı ( Pasta Grafiği )")
    print("    [3.3]- Markaya Göre Puan Dağılımı ( Histogram Grafiği )")
    print("[4]- Dosya İşlemleri")
    print("    [4.1]- Dosya okuma ve okunan dosyayı veri tabanına yazdırma")
    print("\n")
    print("* Uygulamadan çıkmak için EXIT giriniz ")
    print("* Yapmak istediğiniz işlem numarasını giriniz: (Örnek: 2.1)")
    print("\n------------------------------------------------------------\n")

# Seçilen işlem numarasına göre islemi yap
#Yapılacak işlemleri tekrar-tekrar döngüye alarak programdan çıkışı engellendi
def run_operation(islem_no):
    if islem_no == "1":
        create_user()
    elif islem_no == "2.1":
        create_cellphone()
    elif islem_no == "2.2":
        get_all_cellphone()
    elif islem_no == "2.3":
        update_cellphone()
    elif islem_no == "2.4":
        create_cellphone_rating()
    elif islem_no == "2.5":
        delete_cellphone_rating()
    elif islem_no == "3.1":
        draw_scatter_graph()
    elif islem_no == "3.2":
        draw_pie_graph()
    elif islem_no == "3.3":
        draw_histogram_graph()
    elif islem_no == "4.1":
        read_excel_file()
    else:
        print("Geçersiz işlem no!")

# 1- Kullanıcı Oluşturma
def create_user():
    k_adi = get_input("Kullanıcı Adı") #Kullanıcı oluşturmak için ad girisi
    k_sifre = get_input("Şifre") #şifre oluşturmak için şifre girişi
    query = "INSERT INTO kullanici(k_adi,k_sifre) VALUES (%s,%s)" #girilen şifre ve kullanıcı adını veritabanına ekleme
    CURSOR.execute(query,(k_adi, k_sifre)) #Kod satırını çalıştırma işlemi
    DATABASE.commit() #girilmiş olan verilerin dataya işlenmesi
    print("Kullanıcı başarıyla kaydedildi.")

# 2.1- Telefon Ekle
def create_cellphone():
    t_marka = get_input("Marka") #eklenecek telefonun marka girişi
    t_model = get_input("Model") #eklenecek telefonun model girişi
    t_fiyat = get_input("Fiyat") #eklenecek telefonun fiyat girişi
    query = "INSERT INTO telefonlar(marka,model,fiyat) VALUES (%s,%s,%s)" #eklenen marka,model ve fiyat bilgilerinin veri tabanına eklenmesi
    CURSOR.execute(query, (t_marka, t_model, t_fiyat)) #Kod satırını çalıştırma işlemi
    DATABASE.commit()#girilmiş olan verilerin dataya işlenmesi
    print("Telefon başarıyla kaydedildi.")

# 2.2- Telefon Listele
def get_all_cellphone():
    query = "SELECT * FROM telefonlar" #telefom listeleyebilmek için veritabanındaki tabloyu çağırdık
    CURSOR.execute(query) #Kod satırını çalıştırma işlemi
    cellphones = CURSOR.fetchall()
    print("\n----------------------------------------------")
    print("ID\tMARKA\tMODEL\t\tFIYAT")
    print("----------------------------------------------")
    for cellphone in cellphones:
        print('{0}\t{1}\t{2}\t{3}'.format(cellphone[0],cellphone[1],cellphone[2],cellphone[3]))
    print("----------------------------------------------\n")

# 2.3- Telefon Fiyat Güncelle
def update_cellphone():#telefon güncelleme                
    get_all_cellphone() #telefon listeleme metodunu çağırarak telefonu listeler
    cellphone_id = get_input("Güncellecek telefon id") #güncellenecek telefon id girildi
    yeni_fiyat = get_input("Fiyat") #yeni fiyat girildi
    query = "UPDATE telefonlar SET fiyat=%s WHERE id=%s" #girilen verileri güncellemek için veritabanı tablosu ile bağlantı sağlandı
    CURSOR.execute(query, (yeni_fiyat, cellphone_id)) #Kod satırını çalıştırma işlemi
    DATABASE.commit() #girilmiş olan verilerin dataya işlenmesi
    print("Telefon fiyatı başarıyla güncellendi.") #çıktı sonucunu ekrana yazdırma

# 2.4- Telefon Puanla
def create_cellphone_rating(): #Puan oluşturma 
    get_all_cellphone() #telefon listeleme metodunu çağırarak telefonu listeler
    cellphone_id = get_input("Puanlanacak telefon id") #puanlaması yapılacak telefonun idsi girilerek ilgili telefon puanlanır
    print("1 ile 10 arasında bir puan girin")
    puan = get_input("Puan") #puan girişi
    query = "INSERT INTO puanlar(tel_id,tel_puan) VALUES (%s,%s)" #girilen veriyi puanlar tablosuna ekleme işlemi
    CURSOR.execute(query,(cellphone_id, puan)) #Kod satırını çalıştırma işlemi
    DATABASE.commit() #girilmiş olan verilerin dataya işlenmesi
    print("Telefon puanı başarıyla kaydedildi.")

# 2.5 Puan silme
def delete_cellphone_rating():
    get_all_cellphone()
    cellphone_id=get_input("Puanı silinecek telefon id")
    query="DELETE FROM puanlar WHERE tel_id = %s"
    CURSOR.execute(query,(cellphone_id, ))
    DATABASE.commit()
    print("Telefon puanı silindi")
# 3.1- Fiyat Puan İlişki Analizi (Saçilma Grafiği) 
def draw_scatter_graph():
    query = '''
    SELECT t.id as ID, (SELECT DISTINCT(t.fiyat)) AS FIYAT, SUM(tel_puan) as TOPLAM_PUAN FROM telefonlar t
    	LEFT JOIN puanlar p ON t.id = p.tel_id
    GROUP BY t.id
    ''' #puanlar ve telefonlar tablosunda yer alan fiyatları birleştirme işlemi gerçekleştirildi
    CURSOR.execute(query) #Kod satırını çalıştırma işlemi
    cellphone_stats = CURSOR.fetchall() #çalıştırmış olduğumuz kod satırını cellphone_stats'a aktardık 
    print("\n------------------------------------")
    print("ID\tFIYAT\tPUAN")
    print("------------------------------------")
    for stat in cellphone_stats:
        print('{0}\t{1}\t{2}'.format(stat[0],stat[1],stat[2]))
    print("------------------------------------\n")
    
    df = pd.DataFrame(cellphone_stats, columns=['ID', 'FIYAT', 'PUAN']) #veri kolonlar haline getirildi ve ekranda gösterildi
    df.plot.scatter(x='PUAN', y='FIYAT', c='Red') #grafikte yer alacak fiyat ve puanların hangi eksen üzerinde olacağı gösterildi.
    plt.show()
    
    return cellphone_stats

# 3.2- Markaya Göre Puan Dağılımı (Pasta Grafiği)
def draw_pie_graph():
   
    query = '''     
    SELECT t.marka as MARKA ,SUM(tel_puan) as TOPLAM_PUAN FROM telefonlar t
    	LEFT JOIN puanlar p ON t.id = p.tel_id
    WHERE p.tel_puan is not null
    GROUP BY t.marka  
    ''' #telefonlar tablosunda yer alan markayı çekerek puanlar tablosu ile birleştirme işlemi gerçekleştirildi.
    CURSOR.execute(query) #Kod satırını çalıştırma işlemi
    cellphone_stats = CURSOR.fetchall() #çalıştırmış olduğumuz kod satırını cellphone_stats'a aktardık 
    
    df = pd.DataFrame(cellphone_stats)
    df.fillna(0,inplace=True)
    x=df[1]
    label=df[0]
    plt.pie(x,labels=label)
    plt.show()

# 3.3- Markaya Göre Puan Dağılımı (Histogram Grafiği) 
def draw_histogram_graph():
    query = '''     
    SELECT t.marka as MARKA ,SUM(tel_puan) as TOPLAM_PUAN FROM telefonlar t
    	LEFT JOIN puanlar p ON t.id = p.tel_id
    WHERE p.tel_puan is not null
    GROUP BY t.marka  
    '''  #telefonlar tablosunda yer alan markayı çekerek puanlar tablosu ile birleştirme işlemi gerçekleştirildi.
    CURSOR.execute(query) #Kod satırını çalıştırma işlemi
    cellphone_stats = CURSOR.fetchall() #çalıştırmış olduğumuz kod satırını cellphone_stats'a aktardık 
    
    df = pd.DataFrame(cellphone_stats)
    df.fillna(0,inplace=True)

    fig, ax = plt.subplots()
    brands = df[0]
    raitings = df[1]
    y_pos = np.arange((brands.count()))

    ax.barh(y_pos, raitings, align='center')
    ax.set_yticks(y_pos) # grafik ekranında yatay durumdaki puanların konumu oluşturuldu (x ekseni)
    ax.set_yticklabels(brands) #grafik ekranında dikey durumdaki markaların konumu oluşturuldu(y ekseni)
    ax.invert_yaxis()   # verileri yatay doğrultuda yazdır
    ax.set_xlabel('Puanlar')
    ax.set_title('Markaya Göre Puan Dağılımı (Histogram Grafiği)')
    plt.show()

# 4.1- Dosya Okuma
def read_excel_file():
    df = pd.read_excel("python-final/custom_cellphone_rating.xlsx") #dışardan alınacak veriyi okuma işlemi
    query = "INSERT INTO puanlar (tel_id,tel_puan) VALUES " #okunan veriyi veritabanına ekleme işlemi
    for index, row in df.iterrows():
        query += "('{0}','{1}'),\n".format(row['cellphone_id'], row['rating'])
    query = query[:-2] + ';'
    
    CURSOR.execute(query) #Kod satırını çalıştırma işlemi
    DATABASE.commit() #girilmiş olan verilerin dataya işlenmesi
    print("Dosyadan okunan puanlar başarıyla kaydedildi.")

# Kullanıcının giriş yapmasını bekle
def wait_user_input():
    print("Devam etmek için bir tuşa basınız.")
    user_input = input()
    if user_input == 'EXIT':
        print("Uygulama sonlandırıldı.")
        sys.exit(0); #uygulamadan çıkış işlemi yapar
    

# veritabanına  bağlan
def connect_to_db():
    global DATABASE, CURSOR 
    DATABASE = mysql.connector.connect(host="localhost", user="root", password="", db="python_final")
    CURSOR = DATABASE.cursor() #Kod satırını çalıştırma ve veritabanına okuma işlemi

# Uygulama Döngüsü
connect_to_db()


#Uygulamada sürekli dönmesini istediğimiz işlemleri döngüye aldık..
#Döngüye al 
while (True):
    print_menu()
    secilen_islem = get_input("İşlem No")
    run_operation(secilen_islem)
    wait_user_input()
    
    
    
    
    
    
    
