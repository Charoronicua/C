

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `control-gastos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_budget`
--

CREATE TABLE `tbl_budget` (
  `tbl_budget_id` int(11) NOT NULL,
  `monthly_budget` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_budget`
--

INSERT INTO `tbl_budget` (`tbl_budget_id`, `monthly_budget`) VALUES
(1, 10000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_expense`
--

CREATE TABLE `tbl_expense` (
  `tbl_expense_id` int(11) NOT NULL,
  `tbl_expense_category_id` int(11) NOT NULL,
  `expense_name` text NOT NULL,
  `expense_date` date NOT NULL,
  `expense_spent` int(11) NOT NULL,
  `expense_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_expense`
--

INSERT INTO `tbl_expense` (`tbl_expense_id`, `tbl_expense_category_id`, `expense_name`, `expense_date`, `expense_spent`, `expense_description`) VALUES
(5, 3, 'Perro caliente', '2023-09-06', 500, 'Perro caliente con los niños'),
(6, 5, 'Transporte hacía la oficina', '2023-09-07', 25, 'Gasto transporte a la oficina'),
(7, 3, 'Comida Familiar Restaurante', '2023-09-08', 1500, 'Comida Familiar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_expense_category`
--

CREATE TABLE `tbl_expense_category` (
  `tbl_expense_category_id` int(11) NOT NULL,
  `category_name` text NOT NULL,
  `category_budget` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_expense_category`
--

INSERT INTO `tbl_expense_category` (`tbl_expense_category_id`, `category_name`, `category_budget`) VALUES
(3, 'Comida', 2000),
(5, 'Transporte', 400),
(7, 'Salud y Bienestar', 2500),
(8, 'Pago Universidad', 2000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_expense`
--
ALTER TABLE `tbl_expense`
  ADD PRIMARY KEY (`tbl_expense_id`);

--
-- Indices de la tabla `tbl_expense_category`
--
ALTER TABLE `tbl_expense_category`
  ADD PRIMARY KEY (`tbl_expense_category_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_expense`
--
ALTER TABLE `tbl_expense`
  MODIFY `tbl_expense_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tbl_expense_category`
--
ALTER TABLE `tbl_expense_category`
  MODIFY `tbl_expense_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;