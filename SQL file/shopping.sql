-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 10-10-2023 a las 00:03:15
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shopping`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-01-24 17:21:18', '08-10-2023 01:03:28 AM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Plantas', 'Explore nuestra variedad de plantas cuidadosamente seleccionadas, desde suculentas vibrantes hasta exquisitas orquídeas. Encuentre la combinación perfecta de verdor para su espacio y descubra consejos prácticos para el cuidado de estas maravillas naturales.', '2023-10-09 18:02:12', NULL),
(8, 'Macetas', 'Descubra un mundo de estilo y funcionalidad con nuestra variedad de macetas. Desde diseños modernos hasta opciones clásicas, nuestra categoría le brinda la oportunidad de realzar sus plantas con elegancia. Encuentre la maceta perfecta para complementar su espacio y elevar su experiencia de jardinería.', '2023-10-09 18:05:55', NULL),
(9, 'Herramientas para jardín', 'Equípese para el éxito en su espacio verde con nuestra selección de herramientas especializadas. Desde podadoras precisas hasta rastrillos resistentes, nuestra categoría ofrece las herramientas esenciales para cultivar y mantener un jardín exuberante. Explore calidad y funcionalidad que harán florecer su pasión por la jardinería.', '2023-10-09 18:06:51', NULL),
(10, 'Insecticidas', 'Proteja su jardín con nuestra gama de soluciones contra plagas. Descubra productos efectivos y seguros para mantener a raya insectos no deseados. Desde aerosoles hasta tratamientos específicos, nuestra categoría de insecticidas le brinda las herramientas necesarias para preservar la salud y la vitalidad de sus plantas.', '2023-10-09 18:07:39', NULL),
(11, 'Riego', ' Explore nuestra categoría dedicada a todo lo relacionado con el riego eficiente de sus plantas. Encuentre desde sistemas de riego automáticos hasta regaderas especializadas, asegurando que sus plantas reciban la cantidad justa de agua para florecer. Descubra soluciones que simplifican el cuidado de su jardín y promueven un crecimiento saludable.', '2023-10-09 18:31:01', NULL),
(12, 'Fertilizante y abonos', 'Nutra su jardín con nuestra selección de productos especializados. Desde fertilizantes equilibrados hasta abonos orgánicos, nuestra categoría está diseñada para maximizar el crecimiento y la vitalidad de sus plantas. Descubra fórmulas nutritivas que promueven un suelo saludable y flores exuberantes, proporcionando los elementos esenciales para un jardín próspero.', '2023-10-09 18:31:55', NULL),
(13, 'Decoración del jardín', ' Dale vida a tu espacio exterior con nuestra encantadora colección de decoración para jardín. Desde estatuas y fuentes hasta luces decorativas, nuestra categoría te invita a transformar tu jardín en un oasis de estilo y serenidad. Explora opciones creativas para añadir un toque personal a tu entorno al aire libre y crear un espacio encantador y acogedor.', '2023-10-09 18:32:36', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 20:32:57', 'COD', 'En progreso'),
(3, 1, '4', 1, '2017-03-10 20:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 17:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 20:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 20:21:38', 'COD', NULL),
(7, 1, '1', 1, '2023-10-07 20:40:00', 'Debit / Credit card', NULL),
(8, 1, '1', 1, '2023-10-07 20:40:14', 'Debit / Credit card', NULL),
(9, 1, '3', 1, '2023-10-07 20:43:06', 'COD', NULL),
(10, 1, '2', 1, '2023-10-07 20:45:15', 'Debit / Credit card', NULL),
(11, 1, '2', 1, '2023-10-08 05:38:16', 'Debit / Credit card', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 20:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 20:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 20:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 20:50:36'),
(5, 1, 'En progreso', 'Producto entregado', '2023-10-08 05:30:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 21:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 21:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 21:59:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(23, 8, 15, 'maceta de plásctico', 'vivero alegría en la zona de imi', 90, 90, 'si', '105487.jpg', '105488.jpg', '107969.jpg', 10, 'Disponible', '2023-10-09 18:15:07', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(16, 7, 'Árboles de maceta', '2023-10-09 18:36:20', NULL),
(17, 7, 'Plantas comestibles', '2023-10-09 18:36:40', NULL),
(18, 7, 'Plantas florales', '2023-10-09 18:37:17', NULL),
(19, 7, 'Plantas medicinales y aromáticas', '2023-10-09 18:38:04', NULL),
(20, 7, 'Semillas', '2023-10-09 18:38:14', NULL),
(21, 8, 'Bases para macetas', '2023-10-09 18:38:35', NULL),
(22, 8, 'Macetas cerámicas', '2023-10-09 18:38:59', NULL),
(23, 8, 'Macetas de plastico', '2023-10-09 18:39:19', NULL),
(24, 8, 'Macetas de fibra de vidrio', '2023-10-09 18:39:43', NULL),
(25, 9, 'Botas para jardín', '2023-10-09 18:41:08', NULL),
(26, 9, 'Carretillas', '2023-10-09 18:41:19', NULL),
(27, 9, 'Cavar y asentar la tierra', '2023-10-09 18:42:05', NULL),
(28, 9, 'Corte y mantenimiento', '2023-10-09 18:42:21', NULL),
(29, 10, 'Control de plagas y repelentes', '2023-10-09 18:42:53', NULL),
(30, 10, 'Herbicidas y fungicidas', '2023-10-09 18:43:36', NULL),
(31, 11, 'Dispensadores y aspersores', '2023-10-09 18:43:59', NULL),
(32, 11, 'Mangueras y accesorios de riego', '2023-10-09 18:44:22', NULL),
(33, 12, 'Cuidados complementarios', '2023-10-09 18:44:41', NULL),
(34, 12, 'Fertilizante y abonos', '2023-10-09 18:44:59', NULL),
(35, 12, 'Tierra y sutratos', '2023-10-09 18:45:11', NULL),
(36, 13, 'Antorchas, velas y accesorios decorativos', '2023-10-09 18:45:43', NULL),
(37, 13, 'Cercas', '2023-10-09 18:45:50', NULL),
(38, 13, 'Fuentes y estatuas', '2023-10-09 18:46:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 12:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 12:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 12:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 16:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 19:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 19:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 19:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 19:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 19:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 19:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 19:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 19:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 19:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 19:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 13:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 20:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 20:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 18:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 18:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 02:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 10:30:40', '', 1),
(24, 'anuj.lpu1@gmail.com', 0x3132372e302e302e3100000000000000, '2023-10-07 20:39:55', '08-10-2023 03:16:13 AM', 1),
(25, 'jmass8493@gmail.com', 0x3132372e302e302e3100000000000000, '2023-10-07 21:51:10', NULL, 1),
(26, 'jmass8493@gmail.com', 0x3a3a3100000000000000000000000000, '2023-10-08 04:47:03', NULL, 1),
(27, 'anuj.lpu1@gmail.com', 0x3132372e302e302e3100000000000000, '2023-10-08 05:33:07', '08-10-2023 11:05:29 AM', 1),
(28, 'anuj.lpu1@gmail.com', 0x3132372e302e302e3100000000000000, '2023-10-08 05:35:54', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 20:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 18:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 10:30:32', ''),
(4, 'Jonathan Mass ', 'jmass8493@gmail.com', 9811293499, '827ccb0eea8a706c4c34a16891f84e7b', 'Calle suctuc', 'México', 'Campeche', 24087, 'Calle suctuc', 'México', 'Campeche', 24087, '2023-10-07 21:50:39', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 19:53:17'),
(4, 4, 2, '2023-10-08 04:49:29'),
(5, 4, 2, '2023-10-08 04:58:57'),
(6, 4, 2, '2023-10-08 04:59:34'),
(7, 4, 2, '2023-10-08 05:01:31');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
