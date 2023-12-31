-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 15 Haz 2023, 21:59:54
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `python_final`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `k_id` int(50) NOT NULL,
  `k_adi` varchar(100) NOT NULL,
  `k_sifre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`k_id`, `k_adi`, `k_sifre`) VALUES
(2, 'fehmi', 'fehmi123'),
(3, 'tayfunsoy', 'tayfun65'),
(4, 'arslan', 'arslan46');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `puanlar`
--

CREATE TABLE `puanlar` (
  `id` int(11) NOT NULL,
  `tel_id` int(50) NOT NULL,
  `tel_puan` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `puanlar`
--

INSERT INTO `puanlar` (`id`, `tel_id`, `tel_puan`) VALUES
(3069, 0, 5),
(3096, 0, 1),
(3170, 0, 4),
(3199, 0, 6),
(3235, 0, 5),
(3344, 0, 10),
(3598, 0, 8),
(3609, 0, 10),
(3662, 0, 7),
(3689, 0, 9),
(3738, 0, 9),
(3745, 0, 7),
(3768, 0, 9),
(3781, 0, 10),
(3792, 0, 8),
(3853, 0, 10),
(3923, 0, 9),
(3940, 0, 8),
(3967, 0, 8),
(4007, 0, 7),
(4029, 1, 9),
(4030, 1, 8),
(4031, 1, 9),
(4032, 6, 8),
(4033, 1, 7),
(4034, 2, 6),
(4035, 1, 9),
(4036, 2, 8),
(4037, 2, 7),
(4038, 8, 9),
(4039, 8, 8),
(4040, 23, 6),
(4041, 23, 6),
(4042, 9, 6),
(4043, 23, 9),
(4044, 77, 8),
(4045, 77, 7),
(4046, 77, 9),
(4047, 28, 8),
(4048, 28, 9),
(4049, 19, 7),
(4050, 19, 4),
(4051, 16, 9),
(4052, 16, 9),
(4053, 16, 9),
(4054, 12, 9),
(4055, 12, 9),
(4056, 12, 8),
(4057, 12, 9),
(4058, 85, 6),
(4059, 30, 1),
(4060, 5, 3),
(4061, 10, 9),
(4062, 9, 3),
(4063, 23, 2),
(4064, 8, 2),
(4065, 22, 1),
(4066, 16, 2),
(4067, 19, 1),
(4068, 3, 10),
(4069, 7, 8),
(4070, 31, 7),
(4071, 18, 5),
(4072, 3, 10),
(4073, 32, 6),
(4074, 28, 8),
(4075, 16, 7),
(4076, 15, 8),
(4077, 4, 7),
(4078, 8, 8),
(4079, 13, 5),
(4080, 31, 6),
(4081, 23, 8),
(4082, 1, 2),
(4083, 8, 7),
(4084, 19, 1),
(4085, 32, 10),
(4086, 7, 9),
(4087, 27, 4),
(4088, 16, 3),
(4089, 29, 6),
(4090, 22, 9),
(4091, 32, 9),
(4092, 25, 8),
(4093, 20, 7),
(4094, 0, 5),
(4095, 11, 6),
(4096, 17, 8),
(4097, 21, 5),
(4098, 27, 8),
(4099, 23, 9),
(4100, 5, 3),
(4101, 6, 7),
(4102, 4, 9),
(4103, 14, 10),
(4104, 3, 9),
(4105, 12, 8),
(4106, 16, 8),
(4107, 27, 8),
(4108, 11, 8),
(4109, 24, 4),
(4110, 10, 9),
(4111, 16, 7),
(4112, 13, 6),
(4113, 6, 6),
(4114, 32, 5),
(4115, 27, 4),
(4116, 20, 7),
(4117, 31, 3),
(4118, 23, 6),
(4119, 15, 10),
(4120, 24, 3),
(4121, 0, 1),
(4122, 30, 2),
(4123, 27, 4),
(4124, 11, 8),
(4125, 26, 5),
(4126, 13, 7),
(4127, 9, 6),
(4128, 6, 2),
(4129, 20, 9),
(4130, 28, 8),
(4131, 3, 10),
(4132, 21, 8),
(4133, 22, 7),
(4134, 6, 7),
(4135, 18, 8),
(4136, 10, 9),
(4137, 23, 7),
(4138, 15, 10),
(4139, 2, 9),
(4140, 5, 6),
(4141, 14, 2),
(4142, 30, 5),
(4143, 12, 3),
(4144, 32, 9),
(4145, 8, 10),
(4146, 13, 1),
(4147, 16, 9),
(4148, 20, 5),
(4149, 20, 6),
(4150, 32, 9),
(4151, 3, 10),
(4152, 15, 7),
(4153, 23, 6),
(4154, 25, 9),
(4155, 22, 10),
(4156, 12, 8),
(4157, 18, 5),
(4158, 4, 9),
(4159, 11, 8),
(4160, 8, 8),
(4161, 19, 6),
(4162, 24, 7),
(4163, 27, 7),
(4164, 18, 6),
(4165, 6, 8),
(4166, 21, 9),
(4167, 32, 8),
(4168, 4, 10),
(4169, 28, 1),
(4170, 31, 1),
(4171, 5, 10),
(4172, 8, 1),
(4173, 14, 1),
(4174, 17, 1),
(4175, 22, 1),
(4176, 29, 1),
(4177, 3, 10),
(4178, 25, 1),
(4179, 14, 5),
(4180, 8, 7),
(4181, 19, 5),
(4182, 10, 9),
(4183, 7, 6),
(4184, 24, 8),
(4185, 2, 6),
(4186, 16, 7),
(4187, 26, 5),
(4188, 5, 4),
(4189, 17, 8),
(4190, 14, 6),
(4191, 19, 7),
(4192, 15, 6),
(4193, 26, 9),
(4194, 9, 4),
(4195, 0, 4),
(4196, 16, 8),
(4197, 4, 7),
(4198, 2, 5),
(4199, 12, 1),
(4200, 2, 9),
(4201, 13, 1),
(4202, 26, 9),
(4203, 11, 1),
(4204, 31, 3),
(4205, 20, 2),
(4206, 30, 1),
(4207, 6, 2),
(4208, 10, 8),
(4209, 30, 10),
(4210, 29, 9),
(4211, 13, 8),
(4212, 6, 8),
(4213, 2, 10),
(4214, 19, 10),
(4215, 9, 10),
(4216, 10, 10),
(4217, 25, 10),
(4218, 32, 8),
(4219, 19, 7),
(4220, 12, 2),
(4221, 26, 2),
(4222, 17, 3),
(4223, 23, 2),
(4224, 0, 6),
(4225, 18, 9),
(4226, 27, 7),
(4227, 6, 5),
(4228, 4, 1),
(4229, 2, 10),
(4230, 26, 1),
(4231, 6, 1),
(4232, 1, 6),
(4233, 5, 6),
(4234, 10, 4),
(4235, 22, 4),
(4236, 14, 1),
(4237, 9, 4),
(4238, 17, 2),
(4239, 24, 6),
(4240, 32, 5),
(4241, 28, 10),
(4242, 7, 1),
(4243, 18, 5),
(4244, 31, 2),
(4245, 23, 9),
(4246, 30, 1),
(4247, 13, 5),
(4248, 15, 5),
(4249, 1, 7),
(4250, 30, 4),
(4251, 5, 8),
(4252, 24, 7),
(4253, 10, 7),
(4254, 15, 2),
(4255, 2, 8),
(4256, 11, 7),
(4257, 6, 5),
(4258, 25, 6),
(4259, 20, 10),
(4260, 0, 5),
(4261, 13, 4),
(4262, 27, 6),
(4263, 26, 8),
(4264, 8, 1),
(4265, 5, 2),
(4266, 3, 2),
(4267, 24, 5),
(4268, 15, 5),
(4269, 32, 9),
(4270, 5, 8),
(4271, 15, 10),
(4272, 4, 9),
(4273, 26, 9),
(4274, 9, 8),
(4275, 7, 8),
(4276, 29, 8),
(4277, 25, 9),
(4278, 17, 8),
(4279, 15, 5),
(4280, 32, 3),
(4281, 30, 2),
(4282, 5, 9),
(4283, 25, 3),
(4284, 1, 9),
(4285, 12, 5),
(4286, 8, 10),
(4287, 17, 6),
(4288, 13, 9),
(4289, 16, 6),
(4290, 11, 3),
(4291, 32, 8),
(4292, 9, 5),
(4293, 28, 1),
(4294, 26, 9),
(4295, 15, 4),
(4296, 31, 10),
(4297, 13, 2),
(4298, 29, 7),
(4299, 26, 8),
(4300, 25, 7),
(4301, 17, 7),
(4302, 11, 8),
(4303, 21, 7),
(4304, 8, 6),
(4305, 30, 6),
(4306, 28, 7),
(4307, 32, 7),
(4308, 16, 6),
(4309, 16, 8),
(4310, 11, 8),
(4311, 19, 7),
(4312, 10, 8),
(4313, 3, 9),
(4314, 23, 8),
(4315, 32, 7),
(4316, 31, 5),
(4317, 14, 7),
(4318, 5, 6),
(4319, 7, 8),
(4320, 19, 7),
(4321, 30, 8),
(4322, 9, 9),
(4323, 28, 9),
(4324, 31, 8),
(4325, 22, 10),
(4326, 5, 7),
(4327, 8, 8),
(4328, 2, 9),
(4329, 25, 1),
(4330, 2, 10),
(4331, 31, 9),
(4332, 28, 10),
(4333, 21, 1),
(4334, 7, 10),
(4335, 30, 9),
(4336, 14, 10),
(4337, 17, 9),
(4338, 26, 1),
(4339, 18, 1),
(4340, 30, 1),
(4341, 25, 1),
(4342, 1, 10),
(4343, 15, 1),
(4344, 2, 10),
(4345, 4, 10),
(4346, 14, 1),
(4347, 17, 1),
(4348, 21, 1),
(4349, 31, 8),
(4350, 16, 7),
(4351, 1, 9),
(4352, 2, 9),
(4353, 15, 6),
(4354, 22, 5),
(4355, 19, 8),
(4356, 21, 8),
(4357, 12, 9),
(4358, 11, 7),
(4359, 17, 9),
(4360, 22, 10),
(4361, 30, 5),
(4362, 25, 9),
(4363, 29, 6),
(4364, 27, 7),
(4365, 6, 7),
(4366, 32, 4),
(4367, 15, 5),
(4368, 5, 5),
(4369, 0, 10),
(4370, 2, 9),
(4371, 12, 9),
(4372, 20, 7),
(4373, 24, 8),
(4374, 8, 9),
(4375, 9, 8),
(4376, 32, 6),
(4377, 10, 9),
(4378, 7, 8),
(4379, 17, 10),
(4380, 26, 9),
(4381, 13, 10),
(4382, 22, 10),
(4383, 21, 9),
(4384, 4, 10),
(4385, 8, 9),
(4386, 3, 10),
(4387, 25, 10),
(4388, 30, 10),
(4389, 20, 10),
(4390, 27, 9),
(4391, 24, 8),
(4392, 30, 8),
(4393, 29, 8),
(4394, 8, 10),
(4395, 26, 8),
(4396, 7, 9),
(4397, 13, 10),
(4398, 10, 9),
(4399, 30, 6),
(4400, 24, 7),
(4401, 13, 8),
(4402, 12, 9),
(4403, 15, 8),
(4404, 11, 10),
(4405, 28, 10),
(4406, 31, 10),
(4407, 27, 8),
(4408, 16, 10),
(4409, 17, 8),
(4410, 18, 7),
(4411, 4, 10),
(4412, 19, 6),
(4413, 9, 8),
(4414, 12, 9),
(4415, 14, 9),
(4416, 22, 8),
(4417, 7, 9),
(4418, 20, 10),
(4419, 24, 7),
(4420, 20, 6),
(4421, 15, 7),
(4422, 14, 8),
(4423, 4, 6),
(4424, 26, 7),
(4425, 18, 5),
(4426, 5, 6),
(4427, 12, 8),
(4428, 16, 7),
(4429, 8, 2),
(4430, 12, 6),
(4431, 27, 1),
(4432, 31, 2),
(4433, 24, 1),
(4434, 5, 2),
(4435, 3, 3),
(4436, 29, 6),
(4437, 9, 7),
(4438, 14, 1),
(4439, 8, 4),
(4440, 4, 1),
(4441, 7, 3),
(4442, 20, 10),
(4443, 25, 5),
(4444, 30, 9),
(4445, 5, 2),
(4446, 23, 7),
(4447, 18, 6),
(4448, 26, 8),
(4449, 17, 10),
(4450, 23, 10),
(4451, 13, 8),
(4452, 27, 9),
(4453, 11, 1),
(4454, 31, 2),
(4455, 6, 4),
(4456, 29, 3),
(4457, 14, 2),
(4458, 3, 8),
(4459, 14, 5),
(4460, 1, 5),
(4461, 29, 2),
(4462, 27, 1),
(4463, 3, 10),
(4464, 26, 1),
(4465, 7, 10),
(4466, 21, 1),
(4467, 15, 6),
(4468, 4, 10),
(4469, 3, 7),
(4470, 22, 8),
(4471, 28, 7),
(4472, 24, 6),
(4473, 8, 6),
(4474, 29, 6),
(4475, 4, 7),
(4476, 25, 8),
(4477, 12, 9),
(4478, 26, 8),
(4479, 7, 1),
(4480, 25, 10),
(4481, 3, 7),
(4482, 6, 7),
(4483, 11, 9),
(4484, 2, 6),
(4485, 13, 4),
(4486, 19, 7),
(4487, 30, 5),
(4488, 26, 10),
(4489, 19, 1),
(4490, 4, 10),
(4491, 20, 1),
(4492, 10, 1),
(4493, 12, 1),
(4494, 13, 1),
(4495, 3, 10),
(4496, 16, 1),
(4497, 31, 1),
(4498, 27, 1),
(4499, 25, 8),
(4500, 3, 1),
(4501, 16, 4),
(4502, 7, 5),
(4503, 23, 9),
(4504, 10, 3),
(4505, 11, 2),
(4506, 28, 10),
(4507, 19, 7),
(4508, 15, 6),
(4509, 8, 10),
(4510, 7, 8),
(4511, 9, 6),
(4512, 25, 5),
(4513, 30, 6),
(4514, 29, 10),
(4515, 17, 8),
(4516, 20, 8),
(4517, 21, 7),
(4518, 1, 7),
(4519, 24, 8),
(4520, 14, 7),
(4521, 19, 7),
(4522, 3, 8),
(4523, 8, 7),
(4524, 12, 8),
(4525, 29, 7),
(4526, 2, 6),
(4527, 31, 7),
(4528, 26, 7),
(4529, 18, 6),
(4530, 19, 9),
(4531, 14, 8),
(4532, 13, 6),
(4533, 16, 6),
(4534, 29, 8),
(4535, 25, 9),
(4536, 6, 8),
(4537, 24, 7),
(4538, 7, 9),
(4539, 14, 9),
(4540, 18, 7),
(4541, 10, 8),
(4542, 1, 7),
(4543, 4, 9),
(4544, 32, 6),
(4545, 5, 10),
(4546, 12, 10),
(4547, 25, 8),
(4548, 22, 8),
(4549, 24, 5),
(4550, 14, 6),
(4551, 8, 8),
(4552, 4, 6),
(4553, 6, 5),
(4554, 13, 4),
(4555, 23, 8),
(4556, 28, 5),
(4557, 12, 5),
(4558, 32, 2),
(4559, 18, 6),
(4560, 4, 8),
(4561, 27, 9),
(4562, 9, 10),
(4563, 26, 7),
(4564, 5, 9),
(4565, 31, 7),
(4566, 21, 7),
(4567, 25, 9),
(4568, 2, 10),
(4569, 1, 7),
(4570, 9, 9),
(4571, 14, 9),
(4572, 16, 7),
(4573, 31, 10),
(4574, 25, 8),
(4575, 32, 10),
(4576, 22, 9),
(4577, 26, 6),
(4578, 19, 6),
(4579, 6, 7),
(4580, 18, 7),
(4581, 32, 9),
(4582, 14, 8),
(4583, 20, 10),
(4584, 19, 9),
(4585, 11, 9),
(4586, 3, 8),
(4587, 15, 8),
(4588, 13, 10),
(4589, 31, 7),
(4590, 22, 8),
(4591, 12, 8),
(4592, 17, 8),
(4593, 28, 7),
(4594, 15, 7),
(4595, 9, 7),
(4596, 32, 8),
(4597, 11, 6),
(4598, 6, 7),
(4599, 10, 8),
(4600, 22, 8),
(4601, 18, 7),
(4602, 28, 7),
(4603, 4, 8),
(4604, 32, 6),
(4605, 27, 6),
(4606, 19, 7),
(4607, 13, 7),
(4608, 14, 8),
(4609, 30, 7),
(4610, 5, 10),
(4611, 28, 9),
(4612, 22, 7),
(4613, 32, 7),
(4614, 15, 9),
(4615, 3, 10),
(4616, 18, 8),
(4617, 8, 8),
(4618, 29, 7),
(4619, 5, 8),
(4620, 29, 7),
(4621, 30, 7),
(4622, 24, 7),
(4623, 0, 8),
(4624, 15, 8),
(4625, 26, 7),
(4626, 28, 6),
(4627, 19, 7),
(4628, 10, 8),
(4629, 3, 10),
(4630, 18, 2),
(4631, 6, 4),
(4632, 16, 2),
(4633, 26, 5),
(4634, 0, 10),
(4635, 1, 10),
(4636, 24, 5),
(4637, 5, 4),
(4638, 2, 10),
(4639, 25, 9),
(4640, 5, 9),
(4641, 27, 7),
(4642, 24, 5),
(4643, 4, 8),
(4644, 10, 2),
(4645, 28, 2),
(4646, 15, 1),
(4647, 8, 2),
(4648, 19, 8),
(4649, 25, 7),
(4650, 6, 9),
(4651, 21, 6),
(4652, 13, 6),
(4653, 20, 6),
(4654, 30, 6),
(4655, 4, 10),
(4656, 27, 9),
(4657, 11, 8),
(4658, 8, 9),
(4659, 21, 8),
(4660, 12, 9),
(4661, 26, 8),
(4662, 28, 8),
(4663, 5, 10),
(4664, 22, 8),
(4665, 1, 10),
(4666, 9, 8),
(4667, 19, 9),
(4668, 23, 6),
(4669, 8, 1),
(4670, 27, 3),
(4671, 12, 10),
(4672, 31, 1),
(4673, 7, 1),
(4674, 9, 6),
(4675, 6, 4),
(4676, 20, 7),
(4677, 30, 1),
(4678, 18, 1),
(4679, 30, 9),
(4680, 17, 8),
(4681, 4, 6),
(4682, 24, 8),
(4683, 8, 9),
(4684, 32, 7),
(4685, 10, 6),
(4686, 5, 8),
(4687, 0, 7),
(4688, 3, 8),
(4689, 26, 8),
(4690, 9, 6),
(4691, 2, 7),
(4692, 28, 8),
(4693, 17, 6),
(4694, 4, 4),
(4695, 23, 6),
(4696, 7, 8),
(4697, 16, 5),
(4698, 24, 7),
(4699, 31, 1),
(4700, 1, 5),
(4701, 5, 7),
(4702, 25, 9),
(4703, 3, 10),
(4704, 27, 7),
(4705, 2, 10),
(4706, 12, 10),
(4707, 9, 8),
(4708, 26, 8),
(4709, 1, 10),
(4710, 10, 9),
(4711, 14, 5),
(4712, 4, 10),
(4713, 12, 8),
(4714, 0, 9),
(4715, 32, 6),
(4716, 22, 9),
(4717, 7, 10),
(4718, 15, 10),
(4719, 14, 7),
(4720, 22, 6),
(4721, 20, 8),
(4722, 17, 5),
(4723, 27, 5),
(4724, 32, 7),
(4725, 28, 7),
(4726, 30, 6),
(4727, 7, 6),
(4728, 2, 8),
(4729, 10, 7),
(4730, 8, 8),
(4731, 1, 9),
(4732, 11, 5),
(4733, 19, 4),
(4734, 18, 2),
(4735, 9, 3),
(4736, 22, 8),
(4737, 3, 6),
(4738, 7, 8),
(4739, 16, 3),
(4740, 17, 4),
(4741, 30, 9),
(4742, 20, 7),
(4743, 13, 2),
(4744, 31, 10),
(4745, 11, 1),
(4746, 32, 8),
(4747, 6, 5),
(4748, 21, 6),
(4749, 32, 7),
(4750, 30, 9),
(4751, 31, 10),
(4752, 29, 5),
(4753, 1, 4),
(4754, 8, 8),
(4755, 11, 1),
(4756, 13, 2),
(4757, 23, 3),
(4758, 27, 6),
(4759, 19, 6),
(4760, 24, 5),
(4761, 12, 8),
(4762, 30, 3),
(4763, 0, 9),
(4764, 32, 3),
(4765, 25, 9),
(4766, 7, 7),
(4767, 18, 8),
(4768, 15, 6),
(4769, 27, 7),
(4770, 0, 7),
(4771, 17, 8),
(4772, 13, 10),
(4773, 12, 8),
(4774, 30, 8),
(4775, 18, 10),
(4776, 16, 8),
(4777, 2, 8),
(4778, 22, 7),
(4779, 23, 8),
(4780, 20, 7),
(4781, 3, 8),
(4782, 29, 9),
(4783, 13, 7),
(4784, 2, 8),
(4785, 22, 6),
(4786, 10, 7),
(4787, 24, 8),
(4788, 14, 8),
(4789, 23, 8),
(4790, 9, 7),
(4791, 32, 6),
(4792, 18, 7),
(4793, 0, 9),
(4794, 15, 7),
(4795, 10, 7),
(4796, 17, 8),
(4797, 12, 8),
(4798, 3, 7),
(4799, 8, 7),
(4800, 32, 7),
(4801, 1, 9),
(4802, 22, 10),
(4803, 24, 8),
(4804, 18, 10),
(4805, 12, 8),
(4806, 0, 10),
(4807, 15, 9),
(4808, 5, 9),
(4809, 23, 7),
(4810, 14, 7),
(4811, 6, 8),
(4812, 8, 7),
(4813, 16, 6),
(4814, 3, 10),
(4815, 24, 10),
(4816, 31, 9),
(4817, 0, 8),
(4818, 2, 7),
(4819, 24, 8),
(4820, 7, 8),
(4821, 32, 7),
(4822, 29, 8),
(4823, 5, 10),
(4824, 28, 9),
(4825, 30, 8),
(4826, 16, 8),
(4827, 8, 7),
(4828, 18, 7),
(4829, 6, 10),
(4830, 9, 7),
(4831, 30, 4),
(4832, 19, 8),
(4833, 17, 10),
(4834, 15, 10),
(4835, 24, 5),
(4836, 25, 7),
(4837, 27, 9),
(4838, 4, 6),
(4839, 27, 4),
(4840, 18, 6),
(4841, 13, 6),
(4842, 15, 4),
(4843, 31, 4),
(4844, 7, 4),
(4845, 10, 7),
(4846, 3, 7),
(4847, 25, 8),
(4848, 12, 3),
(4849, 8, 1),
(4850, 27, 3),
(4851, 12, 10),
(4852, 31, 1),
(4853, 7, 1),
(4854, 9, 6),
(4855, 6, 4),
(4856, 20, 7),
(4857, 30, 1),
(4858, 18, 1),
(4859, 20, 4),
(4860, 10, 8),
(4861, 13, 7),
(4862, 6, 1),
(4863, 30, 1),
(4864, 25, 6),
(4865, 1, 10),
(4866, 16, 5),
(4867, 5, 9),
(4868, 18, 3),
(4869, 18, 10),
(4870, 8, 8),
(4871, 30, 6),
(4872, 16, 7),
(4873, 23, 8),
(4874, 25, 9),
(4875, 9, 8),
(4876, 1, 10),
(4877, 27, 10),
(4878, 0, 10),
(4879, 29, 10),
(4880, 1, 10),
(4881, 30, 1),
(4882, 27, 1),
(4883, 9, 10),
(4884, 3, 10),
(4885, 31, 2),
(4886, 19, 8),
(4887, 16, 10),
(4888, 13, 10),
(4889, 19, 9),
(4890, 22, 6),
(4891, 30, 5),
(4892, 13, 3),
(4893, 20, 6),
(4894, 2, 6),
(4895, 24, 5),
(4896, 15, 4),
(4897, 25, 8),
(4898, 8, 3),
(4899, 25, 9),
(4900, 5, 9),
(4901, 27, 7),
(4902, 24, 5),
(4903, 4, 8),
(4904, 10, 2),
(4905, 28, 2),
(4906, 15, 1),
(4907, 8, 2),
(4908, 19, 8),
(4909, 16, 7),
(4910, 20, 8),
(4911, 23, 7),
(4912, 27, 6),
(4913, 28, 5),
(4914, 9, 7),
(4915, 21, 8),
(4916, 17, 7),
(4917, 1, 8),
(4918, 7, 7),
(4919, 24, 4),
(4920, 22, 7),
(4921, 8, 5),
(4922, 13, 6),
(4923, 17, 7),
(4924, 4, 8),
(4925, 1, 7),
(4926, 29, 2),
(4927, 31, 2),
(4928, 10, 8),
(4929, 7, 8),
(4930, 15, 8),
(4931, 13, 7),
(4932, 24, 6),
(4933, 23, 10),
(4934, 28, 8),
(4935, 21, 6),
(4936, 20, 9),
(4937, 6, 8),
(4938, 18, 9),
(4939, 29, 8),
(4940, 12, 9),
(4941, 17, 8),
(4942, 20, 9),
(4943, 25, 9),
(4944, 19, 9),
(4945, 24, 9),
(4946, 5, 8),
(4947, 9, 9),
(4948, 0, 9),
(4949, 2, 6),
(4950, 24, 3),
(4951, 19, 7),
(4952, 4, 8),
(4953, 22, 10),
(4954, 27, 7),
(4955, 25, 7),
(4956, 31, 2),
(4957, 15, 5),
(4958, 11, 7),
(4959, 17, 7),
(4960, 6, 6),
(4961, 7, 2),
(4962, 8, 3),
(4963, 29, 3),
(4964, 28, 6),
(4965, 0, 8),
(4966, 20, 8),
(4967, 23, 9),
(4968, 30, 1),
(4969, 15, 7),
(4970, 32, 6),
(4971, 2, 7),
(4972, 10, 7),
(4973, 20, 8),
(4974, 25, 7),
(4975, 18, 6),
(4976, 21, 8),
(4977, 22, 7),
(4978, 4, 8),
(4979, 6, 10),
(4980, 9, 7),
(4981, 30, 4),
(4982, 19, 8),
(4983, 17, 10),
(4984, 15, 10),
(4985, 24, 5),
(4986, 25, 7),
(4987, 27, 9),
(4988, 4, 6),
(4989, 7, 8),
(4990, 21, 7),
(4991, 8, 6),
(4992, 0, 8),
(4993, 3, 4),
(4994, 30, 6),
(4995, 4, 8),
(4996, 28, 7),
(4997, 16, 9),
(4998, 15, 9),
(4999, 16, 6),
(5000, 21, 4),
(5001, 1, 5),
(5002, 26, 18),
(5003, 11, 4),
(5004, 20, 8),
(5005, 30, 5),
(5006, 5, 10),
(5007, 32, 8),
(5008, 14, 7),
(5009, 8, 10),
(5010, 21, 10),
(5011, 9, 10),
(5012, 1, 10),
(5013, 12, 10),
(5014, 4, 10),
(5015, 25, 10),
(5016, 6, 10),
(5017, 14, 10),
(5018, 13, 10),
(5019, 2, 7),
(5020, 25, 8),
(5021, 4, 5),
(5022, 12, 7),
(5023, 31, 7),
(5024, 22, 6),
(5025, 18, 8),
(5026, 32, 9),
(5027, 16, 7),
(5028, 15, 9),
(5029, 4, 8),
(5030, 12, 7),
(5031, 25, 8),
(5032, 0, 7),
(5033, 29, 7),
(5034, 8, 5),
(5035, 17, 9),
(5036, 30, 5),
(5037, 2, 6),
(5038, 20, 8),
(5039, 22, 9),
(5040, 6, 7),
(5041, 29, 6),
(5042, 26, 7),
(5043, 15, 6),
(5044, 31, 5),
(5045, 17, 8),
(5046, 23, 9),
(5047, 27, 8),
(5048, 24, 6),
(5049, 30, 1),
(5050, 5, 3),
(5051, 10, 9),
(5052, 9, 3),
(5053, 23, 2),
(5054, 8, 2),
(5055, 22, 1),
(5056, 16, 2),
(5057, 19, 1),
(5058, 3, 10),
(5059, 7, 8),
(5060, 31, 7),
(5061, 18, 5),
(5062, 3, 10),
(5063, 32, 6),
(5064, 28, 8),
(5065, 16, 7),
(5066, 15, 8),
(5067, 4, 7),
(5068, 8, 8),
(5069, 13, 5),
(5070, 31, 6),
(5071, 23, 8),
(5072, 1, 2),
(5073, 8, 7),
(5074, 19, 1),
(5075, 32, 10),
(5076, 7, 9),
(5077, 27, 4),
(5078, 16, 3),
(5079, 29, 6),
(5080, 22, 9),
(5081, 32, 9),
(5082, 25, 8),
(5083, 20, 7),
(5084, 0, 5),
(5085, 11, 6),
(5086, 17, 8),
(5087, 21, 5),
(5088, 27, 8),
(5089, 23, 9),
(5090, 5, 3),
(5091, 6, 7),
(5092, 4, 9),
(5093, 14, 10),
(5094, 3, 9),
(5095, 12, 8),
(5096, 16, 8),
(5097, 27, 8),
(5098, 11, 8),
(5099, 24, 4),
(5100, 10, 9),
(5101, 16, 7),
(5102, 13, 6),
(5103, 6, 6),
(5104, 32, 5),
(5105, 27, 4),
(5106, 20, 7),
(5107, 31, 3),
(5108, 23, 6),
(5109, 15, 10),
(5110, 24, 3),
(5111, 0, 1),
(5112, 30, 2),
(5113, 27, 4),
(5114, 11, 8),
(5115, 26, 5),
(5116, 13, 7),
(5117, 9, 6),
(5118, 6, 2),
(5119, 20, 9),
(5120, 28, 8),
(5121, 3, 10),
(5122, 21, 8),
(5123, 22, 7),
(5124, 6, 7),
(5125, 18, 8),
(5126, 10, 9),
(5127, 23, 7),
(5128, 15, 10),
(5129, 2, 9),
(5130, 5, 6),
(5131, 14, 2),
(5132, 30, 5),
(5133, 12, 3),
(5134, 32, 9),
(5135, 8, 10),
(5136, 13, 1),
(5137, 16, 9),
(5138, 20, 5),
(5139, 20, 6),
(5140, 32, 9),
(5141, 3, 10),
(5142, 15, 7),
(5143, 23, 6),
(5144, 25, 9),
(5145, 22, 10),
(5146, 12, 8),
(5147, 18, 5),
(5148, 4, 9),
(5149, 11, 8),
(5150, 8, 8),
(5151, 19, 6),
(5152, 24, 7),
(5153, 27, 7),
(5154, 18, 6),
(5155, 6, 8),
(5156, 21, 9),
(5157, 32, 8),
(5158, 4, 10),
(5159, 28, 1),
(5160, 31, 1),
(5161, 5, 10),
(5162, 8, 1),
(5163, 14, 1),
(5164, 17, 1),
(5165, 22, 1),
(5166, 29, 1),
(5167, 3, 10),
(5168, 25, 1),
(5169, 14, 5),
(5170, 8, 7),
(5171, 19, 5),
(5172, 10, 9),
(5173, 7, 6),
(5174, 24, 8),
(5175, 2, 6),
(5176, 16, 7),
(5177, 26, 5),
(5178, 5, 4),
(5179, 17, 8),
(5180, 14, 6),
(5181, 19, 7),
(5182, 15, 6),
(5183, 26, 9),
(5184, 9, 4),
(5185, 0, 4),
(5186, 16, 8),
(5187, 4, 7),
(5188, 2, 5),
(5189, 12, 1),
(5190, 2, 9),
(5191, 13, 1),
(5192, 26, 9),
(5193, 11, 1),
(5194, 31, 3),
(5195, 20, 2),
(5196, 30, 1),
(5197, 6, 2),
(5198, 10, 8),
(5199, 30, 10),
(5200, 29, 9),
(5201, 13, 8),
(5202, 6, 8),
(5203, 2, 10),
(5204, 19, 10),
(5205, 9, 10),
(5206, 10, 10),
(5207, 25, 10),
(5208, 32, 8),
(5209, 19, 7),
(5210, 12, 2),
(5211, 26, 2),
(5212, 17, 3),
(5213, 23, 2),
(5214, 0, 6),
(5215, 18, 9),
(5216, 27, 7),
(5217, 6, 5),
(5218, 4, 1),
(5219, 2, 10),
(5220, 26, 1),
(5221, 6, 1),
(5222, 1, 6),
(5223, 5, 6),
(5224, 10, 4),
(5225, 22, 4),
(5226, 14, 1),
(5227, 9, 4),
(5228, 17, 2),
(5229, 24, 6),
(5230, 32, 5),
(5231, 28, 10),
(5232, 7, 1),
(5233, 18, 5),
(5234, 31, 2),
(5235, 23, 9),
(5236, 30, 1),
(5237, 13, 5),
(5238, 15, 5),
(5239, 1, 7),
(5240, 30, 4),
(5241, 5, 8),
(5242, 24, 7),
(5243, 10, 7),
(5244, 15, 2),
(5245, 2, 8),
(5246, 11, 7),
(5247, 6, 5),
(5248, 25, 6),
(5249, 20, 10),
(5250, 0, 5),
(5251, 13, 4),
(5252, 27, 6),
(5253, 26, 8),
(5254, 8, 1),
(5255, 5, 2),
(5256, 3, 2),
(5257, 24, 5),
(5258, 15, 5),
(5259, 32, 9),
(5260, 5, 8),
(5261, 15, 10),
(5262, 4, 9),
(5263, 26, 9),
(5264, 9, 8),
(5265, 7, 8),
(5266, 29, 8),
(5267, 25, 9),
(5268, 17, 8),
(5269, 15, 5),
(5270, 32, 3),
(5271, 30, 2),
(5272, 5, 9),
(5273, 25, 3),
(5274, 1, 9),
(5275, 12, 5),
(5276, 8, 10),
(5277, 17, 6),
(5278, 13, 9),
(5279, 16, 6),
(5280, 11, 3),
(5281, 32, 8),
(5282, 9, 5),
(5283, 28, 1),
(5284, 26, 9),
(5285, 15, 4),
(5286, 31, 10),
(5287, 13, 2),
(5288, 29, 7),
(5289, 26, 8),
(5290, 25, 7),
(5291, 17, 7),
(5292, 11, 8),
(5293, 21, 7),
(5294, 8, 6),
(5295, 30, 6),
(5296, 28, 7),
(5297, 32, 7),
(5298, 16, 6),
(5299, 16, 8),
(5300, 11, 8),
(5301, 19, 7),
(5302, 10, 8),
(5303, 3, 9),
(5304, 23, 8),
(5305, 32, 7),
(5306, 31, 5),
(5307, 14, 7),
(5308, 5, 6),
(5309, 7, 8),
(5310, 19, 7),
(5311, 30, 8),
(5312, 9, 9),
(5313, 28, 9),
(5314, 31, 8),
(5315, 22, 10),
(5316, 5, 7),
(5317, 8, 8),
(5318, 2, 9),
(5319, 25, 1),
(5320, 2, 10),
(5321, 31, 9),
(5322, 28, 10),
(5323, 21, 1),
(5324, 7, 10),
(5325, 30, 9),
(5326, 14, 10),
(5327, 17, 9),
(5328, 26, 1),
(5329, 18, 1),
(5330, 30, 1),
(5331, 25, 1),
(5332, 1, 10),
(5333, 15, 1),
(5334, 2, 10),
(5335, 4, 10),
(5336, 14, 1),
(5337, 17, 1),
(5338, 21, 1),
(5339, 31, 8),
(5340, 16, 7),
(5341, 1, 9),
(5342, 2, 9),
(5343, 15, 6),
(5344, 22, 5),
(5345, 19, 8),
(5346, 21, 8),
(5347, 12, 9),
(5348, 11, 7),
(5349, 17, 9),
(5350, 22, 10),
(5351, 30, 5),
(5352, 25, 9),
(5353, 29, 6),
(5354, 27, 7),
(5355, 6, 7),
(5356, 32, 4),
(5357, 15, 5),
(5358, 5, 5),
(5359, 0, 10),
(5360, 2, 9),
(5361, 12, 9),
(5362, 20, 7),
(5363, 24, 8),
(5364, 8, 9),
(5365, 9, 8),
(5366, 32, 6),
(5367, 10, 9),
(5368, 7, 8),
(5369, 17, 10),
(5370, 26, 9),
(5371, 13, 10),
(5372, 22, 10),
(5373, 21, 9),
(5374, 4, 10),
(5375, 8, 9),
(5376, 3, 10),
(5377, 25, 10),
(5378, 30, 10),
(5379, 20, 10),
(5380, 27, 9),
(5381, 24, 8),
(5382, 30, 8),
(5383, 29, 8),
(5384, 8, 10),
(5385, 26, 8),
(5386, 7, 9),
(5387, 13, 10),
(5388, 10, 9),
(5389, 30, 6),
(5390, 24, 7),
(5391, 13, 8),
(5392, 12, 9),
(5393, 15, 8),
(5394, 11, 10),
(5395, 28, 10),
(5396, 31, 10),
(5397, 27, 8),
(5398, 16, 10),
(5399, 17, 8),
(5400, 18, 7),
(5401, 4, 10),
(5402, 19, 6),
(5403, 9, 8),
(5404, 12, 9),
(5405, 14, 9),
(5406, 22, 8),
(5407, 7, 9),
(5408, 20, 10),
(5409, 24, 7),
(5410, 20, 6),
(5411, 15, 7),
(5412, 14, 8),
(5413, 4, 6),
(5414, 26, 7),
(5415, 18, 5),
(5416, 5, 6),
(5417, 12, 8),
(5418, 16, 7),
(5419, 8, 2),
(5420, 12, 6),
(5421, 27, 1),
(5422, 31, 2),
(5423, 24, 1),
(5424, 5, 2),
(5425, 3, 3),
(5426, 29, 6),
(5427, 9, 7),
(5428, 14, 1),
(5429, 8, 4),
(5430, 4, 1),
(5431, 7, 3),
(5432, 20, 10),
(5433, 25, 5),
(5434, 30, 9),
(5435, 5, 2),
(5436, 23, 7),
(5437, 18, 6),
(5438, 26, 8),
(5439, 17, 10),
(5440, 23, 10),
(5441, 13, 8),
(5442, 27, 9),
(5443, 11, 1),
(5444, 31, 2),
(5445, 6, 4),
(5446, 29, 3),
(5447, 14, 2),
(5448, 3, 8),
(5449, 14, 5),
(5450, 1, 5),
(5451, 29, 2),
(5452, 27, 1),
(5453, 3, 10),
(5454, 26, 1),
(5455, 7, 10),
(5456, 21, 1),
(5457, 15, 6),
(5458, 4, 10),
(5459, 3, 7),
(5460, 22, 8),
(5461, 28, 7),
(5462, 24, 6),
(5463, 8, 6),
(5464, 29, 6),
(5465, 4, 7),
(5466, 25, 8),
(5467, 12, 9),
(5468, 26, 8),
(5469, 7, 1),
(5470, 25, 10),
(5471, 3, 7),
(5472, 6, 7),
(5473, 11, 9),
(5474, 2, 6),
(5475, 13, 4),
(5476, 19, 7),
(5477, 30, 5),
(5478, 26, 10),
(5479, 19, 1),
(5480, 4, 10),
(5481, 20, 1),
(5482, 10, 1),
(5483, 12, 1),
(5484, 13, 1),
(5485, 3, 10),
(5486, 16, 1),
(5487, 31, 1),
(5488, 27, 1),
(5489, 25, 8),
(5490, 3, 1),
(5491, 16, 4),
(5492, 7, 5),
(5493, 23, 9),
(5494, 10, 3),
(5495, 11, 2),
(5496, 28, 10),
(5497, 19, 7),
(5498, 15, 6),
(5499, 8, 10),
(5500, 7, 8),
(5501, 9, 6),
(5502, 25, 5),
(5503, 30, 6),
(5504, 29, 10),
(5505, 17, 8),
(5506, 20, 8),
(5507, 21, 7),
(5508, 1, 7),
(5509, 24, 8),
(5510, 14, 7),
(5511, 19, 7),
(5512, 3, 8),
(5513, 8, 7),
(5514, 12, 8),
(5515, 29, 7),
(5516, 2, 6),
(5517, 31, 7),
(5518, 26, 7),
(5519, 18, 6),
(5520, 19, 9),
(5521, 14, 8),
(5522, 13, 6),
(5523, 16, 6),
(5524, 29, 8),
(5525, 25, 9),
(5526, 6, 8),
(5527, 24, 7),
(5528, 7, 9),
(5529, 14, 9),
(5530, 18, 7),
(5531, 10, 8),
(5532, 1, 7),
(5533, 4, 9),
(5534, 32, 6),
(5535, 5, 10),
(5536, 12, 10),
(5537, 25, 8),
(5538, 22, 8),
(5539, 24, 5),
(5540, 14, 6),
(5541, 8, 8),
(5542, 4, 6),
(5543, 6, 5),
(5544, 13, 4),
(5545, 23, 8),
(5546, 28, 5),
(5547, 12, 5),
(5548, 32, 2),
(5549, 18, 6),
(5550, 4, 8),
(5551, 27, 9),
(5552, 9, 10),
(5553, 26, 7),
(5554, 5, 9),
(5555, 31, 7),
(5556, 21, 7),
(5557, 25, 9),
(5558, 2, 10),
(5559, 1, 7),
(5560, 9, 9),
(5561, 14, 9),
(5562, 16, 7),
(5563, 31, 10),
(5564, 25, 8),
(5565, 32, 10),
(5566, 22, 9),
(5567, 26, 6),
(5568, 19, 6),
(5569, 6, 7),
(5570, 18, 7),
(5571, 32, 9),
(5572, 14, 8),
(5573, 20, 10),
(5574, 19, 9),
(5575, 11, 9),
(5576, 3, 8),
(5577, 15, 8),
(5578, 13, 10),
(5579, 31, 7),
(5580, 22, 8),
(5581, 12, 8),
(5582, 17, 8),
(5583, 28, 7),
(5584, 15, 7),
(5585, 9, 7),
(5586, 32, 8),
(5587, 11, 6),
(5588, 6, 7),
(5589, 10, 8),
(5590, 22, 8),
(5591, 18, 7),
(5592, 28, 7),
(5593, 4, 8),
(5594, 32, 6),
(5595, 27, 6),
(5596, 19, 7),
(5597, 13, 7),
(5598, 14, 8),
(5599, 30, 7),
(5600, 5, 10),
(5601, 28, 9),
(5602, 22, 7),
(5603, 32, 7),
(5604, 15, 9),
(5605, 3, 10),
(5606, 18, 8),
(5607, 8, 8),
(5608, 29, 7),
(5609, 5, 8),
(5610, 29, 7),
(5611, 30, 7),
(5612, 24, 7),
(5613, 0, 8),
(5614, 15, 8),
(5615, 26, 7),
(5616, 28, 6),
(5617, 19, 7),
(5618, 10, 8),
(5619, 3, 10),
(5620, 18, 2),
(5621, 6, 4),
(5622, 16, 2),
(5623, 26, 5),
(5624, 0, 10),
(5625, 1, 10),
(5626, 24, 5),
(5627, 5, 4),
(5628, 2, 10),
(5629, 25, 9),
(5630, 5, 9),
(5631, 27, 7),
(5632, 24, 5),
(5633, 4, 8),
(5634, 10, 2),
(5635, 28, 2),
(5636, 15, 1),
(5637, 8, 2),
(5638, 19, 8),
(5639, 25, 7),
(5640, 6, 9),
(5641, 21, 6),
(5642, 13, 6),
(5643, 20, 6),
(5644, 30, 6),
(5645, 4, 10),
(5646, 27, 9),
(5647, 11, 8),
(5648, 8, 9),
(5649, 21, 8),
(5650, 12, 9),
(5651, 26, 8),
(5652, 28, 8),
(5653, 5, 10),
(5654, 22, 8),
(5655, 1, 10),
(5656, 9, 8),
(5657, 19, 9),
(5658, 23, 6),
(5659, 8, 1),
(5660, 27, 3),
(5661, 12, 10),
(5662, 31, 1),
(5663, 7, 1),
(5664, 9, 6),
(5665, 6, 4),
(5666, 20, 7),
(5667, 30, 1),
(5668, 18, 1),
(5669, 30, 9),
(5670, 17, 8),
(5671, 4, 6),
(5672, 24, 8),
(5673, 8, 9),
(5674, 32, 7),
(5675, 10, 6),
(5676, 5, 8),
(5677, 0, 7),
(5678, 3, 8),
(5679, 26, 8),
(5680, 9, 6),
(5681, 2, 7),
(5682, 28, 8),
(5683, 17, 6),
(5684, 4, 4),
(5685, 23, 6),
(5686, 7, 8),
(5687, 16, 5),
(5688, 24, 7),
(5689, 31, 1),
(5690, 1, 5),
(5691, 5, 7),
(5692, 25, 9),
(5693, 3, 10),
(5694, 27, 7),
(5695, 2, 10),
(5696, 12, 10),
(5697, 9, 8),
(5698, 26, 8),
(5699, 1, 10),
(5700, 10, 9),
(5701, 14, 5),
(5702, 4, 10),
(5703, 12, 8),
(5704, 0, 9),
(5705, 32, 6),
(5706, 22, 9),
(5707, 7, 10),
(5708, 15, 10),
(5709, 14, 7),
(5710, 22, 6),
(5711, 20, 8),
(5712, 17, 5),
(5713, 27, 5),
(5714, 32, 7),
(5715, 28, 7),
(5716, 30, 6),
(5717, 7, 6),
(5718, 2, 8),
(5719, 10, 7),
(5720, 8, 8),
(5721, 1, 9),
(5722, 11, 5),
(5723, 19, 4),
(5724, 18, 2),
(5725, 9, 3),
(5726, 22, 8),
(5727, 3, 6),
(5728, 7, 8),
(5729, 16, 3),
(5730, 17, 4),
(5731, 30, 9),
(5732, 20, 7),
(5733, 13, 2),
(5734, 31, 10),
(5735, 11, 1),
(5736, 32, 8),
(5737, 6, 5),
(5738, 21, 6),
(5739, 32, 7),
(5740, 30, 9),
(5741, 31, 10),
(5742, 29, 5),
(5743, 1, 4),
(5744, 8, 8),
(5745, 11, 1),
(5746, 13, 2),
(5747, 23, 3),
(5748, 27, 6),
(5749, 19, 6),
(5750, 24, 5),
(5751, 12, 8),
(5752, 30, 3),
(5753, 0, 9),
(5754, 32, 3),
(5755, 25, 9),
(5756, 7, 7),
(5757, 18, 8),
(5758, 15, 6),
(5759, 27, 7),
(5760, 0, 7),
(5761, 17, 8),
(5762, 13, 10),
(5763, 12, 8),
(5764, 30, 8),
(5765, 18, 10),
(5766, 16, 8),
(5767, 2, 8),
(5768, 22, 7),
(5769, 23, 8),
(5770, 20, 7),
(5771, 3, 8),
(5772, 29, 9),
(5773, 13, 7),
(5774, 2, 8),
(5775, 22, 6),
(5776, 10, 7),
(5777, 24, 8),
(5778, 14, 8),
(5779, 23, 8),
(5780, 9, 7),
(5781, 32, 6),
(5782, 18, 7),
(5783, 0, 9),
(5784, 15, 7),
(5785, 10, 7),
(5786, 17, 8),
(5787, 12, 8),
(5788, 3, 7),
(5789, 8, 7),
(5790, 32, 7),
(5791, 1, 9),
(5792, 22, 10),
(5793, 24, 8),
(5794, 18, 10),
(5795, 12, 8),
(5796, 0, 10),
(5797, 15, 9),
(5798, 5, 9),
(5799, 23, 7),
(5800, 14, 7),
(5801, 6, 8),
(5802, 8, 7),
(5803, 16, 6),
(5804, 3, 10),
(5805, 24, 10),
(5806, 31, 9),
(5807, 0, 8),
(5808, 2, 7),
(5809, 24, 8),
(5810, 7, 8),
(5811, 32, 7),
(5812, 29, 8),
(5813, 5, 10),
(5814, 28, 9),
(5815, 30, 8),
(5816, 16, 8),
(5817, 8, 7),
(5818, 18, 7),
(5819, 6, 10),
(5820, 9, 7),
(5821, 30, 4),
(5822, 19, 8),
(5823, 17, 10),
(5824, 15, 10),
(5825, 24, 5),
(5826, 25, 7),
(5827, 27, 9),
(5828, 4, 6),
(5829, 27, 4),
(5830, 18, 6),
(5831, 13, 6),
(5832, 15, 4),
(5833, 31, 4),
(5834, 7, 4),
(5835, 10, 7),
(5836, 3, 7),
(5837, 25, 8),
(5838, 12, 3),
(5839, 8, 1),
(5840, 27, 3),
(5841, 12, 10),
(5842, 31, 1),
(5843, 7, 1),
(5844, 9, 6),
(5845, 6, 4),
(5846, 20, 7),
(5847, 30, 1),
(5848, 18, 1),
(5849, 20, 4),
(5850, 10, 8),
(5851, 13, 7),
(5852, 6, 1),
(5853, 30, 1),
(5854, 25, 6),
(5855, 1, 10),
(5856, 16, 5),
(5857, 5, 9),
(5858, 18, 3),
(5859, 18, 10),
(5860, 8, 8),
(5861, 30, 6),
(5862, 16, 7),
(5863, 23, 8),
(5864, 25, 9),
(5865, 9, 8),
(5866, 1, 10),
(5867, 27, 10),
(5868, 0, 10),
(5869, 29, 10),
(5870, 1, 10),
(5871, 30, 1),
(5872, 27, 1),
(5873, 9, 10),
(5874, 3, 10),
(5875, 31, 2),
(5876, 19, 8),
(5877, 16, 10),
(5878, 13, 10),
(5879, 19, 9),
(5880, 22, 6),
(5881, 30, 5),
(5882, 13, 3),
(5883, 20, 6),
(5884, 2, 6),
(5885, 24, 5),
(5886, 15, 4),
(5887, 25, 8),
(5888, 8, 3),
(5889, 25, 9),
(5890, 5, 9),
(5891, 27, 7),
(5892, 24, 5),
(5893, 4, 8),
(5894, 10, 2),
(5895, 28, 2),
(5896, 15, 1),
(5897, 8, 2),
(5898, 19, 8),
(5899, 16, 7),
(5900, 20, 8),
(5901, 23, 7),
(5902, 27, 6),
(5903, 28, 5),
(5904, 9, 7),
(5905, 21, 8),
(5906, 17, 7),
(5907, 1, 8),
(5908, 7, 7),
(5909, 24, 4),
(5910, 22, 7),
(5911, 8, 5),
(5912, 13, 6),
(5913, 17, 7),
(5914, 4, 8),
(5915, 1, 7),
(5916, 29, 2),
(5917, 31, 2),
(5918, 10, 8),
(5919, 7, 8),
(5920, 15, 8),
(5921, 13, 7),
(5922, 24, 6),
(5923, 23, 10),
(5924, 28, 8),
(5925, 21, 6),
(5926, 20, 9),
(5927, 6, 8),
(5928, 18, 9),
(5929, 29, 8),
(5930, 12, 9),
(5931, 17, 8),
(5932, 20, 9),
(5933, 25, 9),
(5934, 19, 9),
(5935, 24, 9),
(5936, 5, 8),
(5937, 9, 9),
(5938, 0, 9),
(5939, 2, 6),
(5940, 24, 3),
(5941, 19, 7),
(5942, 4, 8),
(5943, 22, 10),
(5944, 27, 7),
(5945, 25, 7),
(5946, 31, 2),
(5947, 15, 5),
(5948, 11, 7),
(5949, 17, 7),
(5950, 6, 6),
(5951, 7, 2),
(5952, 8, 3),
(5953, 29, 3),
(5954, 28, 6),
(5955, 0, 8),
(5956, 20, 8),
(5957, 23, 9),
(5958, 30, 1),
(5959, 15, 7),
(5960, 32, 6),
(5961, 2, 7),
(5962, 10, 7),
(5963, 20, 8),
(5964, 25, 7),
(5965, 18, 6),
(5966, 21, 8),
(5967, 22, 7),
(5968, 4, 8),
(5969, 6, 10),
(5970, 9, 7),
(5971, 30, 4),
(5972, 19, 8),
(5973, 17, 10),
(5974, 15, 10),
(5975, 24, 5),
(5976, 25, 7),
(5977, 27, 9),
(5978, 4, 6),
(5979, 7, 8),
(5980, 21, 7),
(5981, 8, 6),
(5982, 0, 8),
(5983, 3, 4),
(5984, 30, 6),
(5985, 4, 8),
(5986, 28, 7),
(5987, 16, 9),
(5988, 15, 9),
(5989, 16, 6),
(5990, 21, 4),
(5991, 1, 5),
(5992, 26, 18),
(5993, 11, 4),
(5994, 20, 8),
(5995, 30, 5),
(5996, 5, 10),
(5997, 32, 8),
(5998, 14, 7),
(5999, 8, 10),
(6000, 21, 10),
(6001, 9, 10),
(6002, 1, 10),
(6003, 12, 10),
(6004, 4, 10),
(6005, 25, 10),
(6006, 6, 10),
(6007, 14, 10),
(6008, 13, 10),
(6009, 2, 7),
(6010, 25, 8),
(6011, 4, 5),
(6012, 12, 7),
(6013, 31, 7),
(6014, 22, 6),
(6015, 18, 8),
(6016, 32, 9),
(6017, 16, 7),
(6018, 15, 9),
(6019, 4, 8),
(6020, 12, 7),
(6021, 25, 8),
(6022, 0, 7),
(6023, 29, 7),
(6024, 8, 5),
(6025, 17, 9),
(6026, 30, 5),
(6027, 2, 6),
(6028, 20, 8),
(6029, 22, 9),
(6030, 6, 7),
(6031, 29, 6),
(6032, 26, 7),
(6033, 15, 6),
(6034, 31, 5),
(6035, 17, 8),
(6036, 23, 9),
(6037, 27, 8),
(6038, 24, 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `telefonlar`
--

CREATE TABLE `telefonlar` (
  `id` int(11) NOT NULL,
  `marka` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `fiyat` decimal(65,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `telefonlar`
--

INSERT INTO `telefonlar` (`id`, `marka`, `model`, `fiyat`) VALUES
(1, 'Apple', 'iPhone SE (2022)', 10000),
(2, 'Apple', 'iPhone 13 Mini', 10000),
(3, 'Apple', 'iPhone 13', 10000),
(4, 'Apple', 'iPhone 13 Pro', 10000),
(5, 'Apple', 'iPhone 13 Pro Max', 10000),
(6, 'Apple', 'iPhone XR', 10000),
(7, 'Asus', 'Zenfone 8', 5000),
(8, 'Samsung', 'Galaxy A13', 8000),
(9, 'Samsung', 'Galaxy A32', 8000),
(10, 'Samsung', 'Galaxy A53', 8000),
(11, 'Samsung', 'Galaxy S22', 8000),
(12, 'Samsung', 'Galaxy S22 Plus', 8000),
(13, 'Samsung', 'Galaxy S22 Ultra', 8000),
(14, 'Samsung', 'Galaxy Z Flip 3', 8000),
(15, 'Samsung', 'Galaxy Z Fold 3', 8000),
(16, 'Google', 'Pixel 6  ', 5000),
(17, 'Google', 'Pixel 6a', 5000),
(18, 'Google', 'Pixel 6 Pro ', 5000),
(19, 'OnePlus', 'Nord N20', 5000),
(20, 'OnePlus', 'Nord 2T', 5000),
(21, 'OnePlus', '10 Pro', 5000),
(22, 'OnePlus', '10T', 5000),
(23, 'Oppo', 'Find X5 Pro', 5000),
(24, 'Vivo', 'X80 Pro', 5000),
(25, 'Xiaomi', 'Redmi Note 11', 5000),
(26, 'Xiaomi', '11T Pro', 5000),
(27, 'Xiaomi', '12 Pro', 5000),
(28, 'Xiaomi', 'Poco F4', 5000),
(29, 'Sony', 'Xperia Pro', 5000),
(30, 'Motorola', 'Moto G Stylus (2022)', 5000),
(31, 'Motorola', 'Moto G Play (2021)', 5000),
(32, 'Motorola', 'Moto G Pure', 5000),
(33, 'Motorola', 'Moto G Power (2022)', 5000),
(77, 'Apple', 'S7', 7000);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`k_id`);

--
-- Tablo için indeksler `puanlar`
--
ALTER TABLE `puanlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `telefonlar`
--
ALTER TABLE `telefonlar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `k_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `puanlar`
--
ALTER TABLE `puanlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6039;

--
-- Tablo için AUTO_INCREMENT değeri `telefonlar`
--
ALTER TABLE `telefonlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
