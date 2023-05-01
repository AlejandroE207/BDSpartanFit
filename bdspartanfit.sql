-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: bdspartanfit
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblejercicios`
--

DROP TABLE IF EXISTS `tblejercicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblejercicios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descripcion` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `url` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  UNIQUE KEY `url_UNIQUE` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblejercicios`
--

LOCK TABLES `tblejercicios` WRITE;
/*!40000 ALTER TABLE `tblejercicios` DISABLE KEYS */;
INSERT INTO `tblejercicios` VALUES (1,'press plano','sujeta la barra a la altura de los hombros Las muñecas se mantienen rectas y las manos tienen que rodear la barra para un agarre firme. Después se inicia el movimiento. Toma aire profundamente y contrae al mismo tiempo la espalda, los glúteos y los omóplatos fijos.','https://media.tenor.com/0hoNLcggDG0AAAAC/bench-press.gif'),(2,'press inclinado','Túmbate en el banco boca arriba y apoya los pies en el suelo. Asegúrate de que los omóplatos (escápulas) estén bien apoyados en el banco. Coge la barra con las manos separadas el ancho de los hombros y sácala de los soportes con cuidado hasta que quede por encima de tu pecho, con los brazos completamente extendidos.','https://media.tenor.com/NuIuWkGoYtMAAAAC/1incline-barbell-press.gif'),(3,'peckdeck','Coloca los pies en el suelo separados a la altura de los hombros, coloca los brazos abiertos, de forma que queden en un ángulo de 120º, empujando las empuñaduras hasta que se toquen ambos extremos frente a ti. Consejo, trata como si fueras a juntar los biceps.','https://media.tenor.com/4GC6XuldPekAAAAd/jay-cutler.gif'),(4,'crossover','colocándote por delante del agarre un pie adelante que el otro nos da un mayor balance, Los codos siempre tienen que estar ligeramente flexionados durante todo el levantamiento, Traemos los brazos al frente sostenemos la posición concéntrica, abrimos los brazos para iniciar la fase excéntrica','https://media.tenor.com/dZl54zeliHUAAAAd/zyzz-gym.gif'),(5,'jalon al pecho','Coloca las manos en la barra separadas a una distancia ligeramente mayor al ancho de los hombros. Jala lentamente de la barra hacia tu pecho, moviendo los codos hacia atrás. Mantén el pecho alto y junta los omóplatos. Detente cuando tus codos no puedan ir más atrás.','https://media.tenor.com/mBPvMzz9Y_kAAAAd/lat-pulldowns.gif'),(6,'remo con barra','Colocarnos de pie con las rodillas ligeramente flexionadas y el tronco inclinado formando con las piernas un ángulo de 45º. Con la espalda recta y la barra tomada en pronación, con las palmas hacia abajo, separamos las manos de la anchura de los hombros, y dejamos caer los brazos frente al torso.\nDesde allí inspiramos y efectuamos una contracción abdominal mientras tiramos la barra hacia la cintura para luego espirar y regresar lentamente hacia la posición inicial.','https://media.tenor.com/qVxeKiV_ZG4AAAAC/weights-skinny-guy.gif'),(7,'pullover','toma la barra en polea con agarre prono, flexiona el tronco en direccion a la polea, tus rodillas deben de estar en semiflexion, luego baja la barra hacia tus piernas sin flexionar los codos. Haz el movimiento controlado para sentir mas los musculos de la espalda (Podemos hacer el ejercicio con barra o con cuerda)','https://media.tenor.com/SCpcU8S8F8wAAAAd/pull.gif'),(8,'sentadilla libre','Para realizar este ejercicio debes de tener en cuenta varios puntos; espalda recta evitando curvar la espalda, mantener la espalda lo mas vartical que se pueda, el peso de la barra debe de recaer en la parte media del pie, los pies y rodillas en posicion natural evitando abrir demasiado las piernas ni tan cerradas, evitar que las rodillas se aproximan al bajar, ni que se doblen los tobillos','https://media.tenor.com/pANVg22G1JAAAAAC/workouts-squats.gif'),(9,'hackup','Toma las asas laterales de la máquina con ambas manos. Inicia el ejercicio flexionando tus piernas hasta que los muslos queden paralelos a la plataforma. La cadera se debe situar por debajo de la línea de las rodillas para estirar al máximo las fibras del cuádriceps.','https://media.tenor.com/6EHYNoQvSisAAAAC/fitness-squat.gif'),(10,'extensiones','debemos sentarnos en la máquina específica para tal fin y colocar los pies debajo de las almohadillas o rodillos acolchados, de manera tal que las rodillas queden alineadas con la articulación de la máquina.Colocamos las manos agarrando el asiento o los brazos del sillón para estabilizar el tronco y nos sentamos de manera tal que la espalda y las caderas queden perfectamente apoyadas sobre el respaldo de la máquina. Previamente debemos cargar la máquina con el peso elegido y una vez en esta posición, debemos inspirar y realizar una extensión de rodilla de manera de levantar el peso con las piernas hasta que éstas queden horizontales y paralelas al piso, el torso debe permanecer inmóvil y erguido.','https://media.tenor.com/4QuqUJ4HCM4AAAAd/cadeira-extensora-treino-mestre.gif'),(11,'peso muerto','Para realizar el peso muerto debemos colocarnos de pie frente a una barra situada en el suelo, con las piernas ligeramente separadas y las rodillas levemente flexionadas.\nDesde esta posición inicial debemos inclinar el tronco hacia adelante manteniendo la espalda recta y coger la barra con las manos mientras las palmas miran hacia el cuerpo, es decir, en pronación. Inspiramos y enderezamos el cuerpo, colocándonos en posición vertical nuevamente. Espiramos al final del movimiento.','https://media.tenor.com/APh12ekUwcIAAAAC/dumbbell-deadlift.gif'),(12,'curl femoral','Ajusta el cojín de los pies para que quede a la altura de tus tobillos. Túmbate en la máquina y sujeta las asas con las manos para mejorar la estabilidad de la parte superior del cuerpo. Flexiona las rodillas para llevar los talones hacia los glúteos, vuelve a bajar de forma lenta y controlada las piernas hacia la posición inicial y repite.','https://media.tenor.com/yGOPV0J4vxEAAAAd/mesa-flexora-treino-mestre.gif'),(13,'extension gemelos','Utilizando las pantorrillas, levante el talón con un movimiento fuerte mientras exhala. Vuelva a la posición inicial con un suave movimiento mientras inhala. Para mayor contraccion podemos utilizar un step y nos ubicamos en la orilla del step y realizando el movimiento, permitiendo bajar mas el talon. Ten mucho cuidado con tu equilibrio','https://shopguarani.com/wp-content/uploads/2022/11/Elevacao-de-panturrilha-com-barra.gif'),(14,'elevaciones laterales','Debemos colocarnos de pie, con las piernas ligeramente flexionadas y separadas del ancho de la cadera. La espalda debe permanecer recta y en cada mano debemos sujetar una mancuerna, mientras los brazos permanecen a los lados del cuerpo o delante de los muslos, levemente flexionados.\nTomando aire elevamos las mancuernas hasta que los brazos queden alineados con los hombros y desde allí bajamos lentamente mientras exhalamos.','https://media.tenor.com/D-6OdraYzJwAAAAd/jay-cutler.gif'),(15,'elevaciones frontales','Debemos colocarnos de pie, con los pies ligeramente separados y mancuernas con las manos en pronación, las mancuernas deben apoyarse junto a las manos sobre los muslos, ligeramente hacia los costados. Inspiramos y comenzamos a contraer los músculos para elevar un brazo hacia adelante mientras espiramos el aire. \nDescendemos mientras inhalamos nuevamente y elevamos el brazo contrario. Los brazos deben elevarse hasta formar con el torso un ángulo de 90 grados o hasta la altura de los ojos, no más de allí, y siempre el codo debe estar ligeramente flexionado.','https://media.tenor.com/GXzSpNT59XgAAAAC/alexa-bliss-shoulder-workout.gif'),(16,'facepull','El movimiento comienza con los brazos estirados, codos próximos al torso y con la columna bien erguida. Desde esta posición llevamos la polea hacia el cuello o hacia el rostro combinando una extensión horizontal de hombro, una abducción y una rotación externa.','https://atopedegym.com/wp-content/uploads/2023/03/face-pull-tecnica.gif'),(17,'curl barra alta','Realizamos una extensión de los codos, llevando el mango de la polea hacia abajo, sin despegar los codos de los lados del cuerpo y únicamente movilizando el antebrazo. Espiramos al final del movimiento y regresamos lentamente a la posición inicial. ','https://media.tenor.com/FT76IvjiXf8AAAAC/ronnie-coleman.gif'),(18,'curl bicep con barra','Tomaremos una barra con las manos, de manera que las palmas miren hacia arriba, es decir, con agarre en supinación. Las manos deben estar separadas en la barra un poco más allá de la anchura de los hombros.\nDesde esta posición, sin movilizar el tronco y manteniendo los codos a los lados del cuerpo, debemos inspirar y flexionar los codos mientras acercamos la barra al pecho y contraemos glúteos, abdominales y espinales para no mover el tronco.','https://media.tenor.com/Ynf6lq4sITgAAAAd/bodybuilding-workout.gif'),(19,'predicador','Siéntate cómodamente en el banco de predicador. Después toma tu barra EZ por la parte interior con las palmas de la mano hacia adelante. \nMientras tienes los brazos descansando contra la colcha del banco, agarra la barra a la anchura de los hombros, lo cual será tu posición inicial, flexiona el codo como llevando la barra hacia la cara, luego baja tus brazos lentamente hasta que hayas extendido tus bíceps completamente mientras inhalas.','https://media.tenor.com/nLodhTy5DjwAAAAd/bodybuilding-biceps.gif'),(20,'curl con cuerda','Tomaremos una cuerda en la polea alta con las manos, de manera que las palmas miren hacia abajo, es decir, con agarre de pronacion o un agarre neutro. Teniendo el cuerpo firme y la espalda recta, extendemos los brazos hacia los muslos y asi repitiendo el movimiento.','https://media.tenor.com/NvQ6d7doRaQAAAAd/working-out-sheamus.gif'),(21,'fondos','Para comenzar con la realización del movimiento se requiere de una máquina de paralelas en la cual debemos apoyar las manos en sus apoya brazos y elevar el cuerpo de manera de despegar los pies del suelo. Con las piernas en el aire, el tronco ligeramente inclinado hacia adelante y los brazos soportando el peso del cuerpo, iniciamos el ejercicio.\nInspiramos y flexionamos los codos de manera de que el pecho descienda hasta el nivel de las barras, siempre conservando las piernas y el torso inmóvil. Sólo debe moverse el cuerpo hacia abajo y arriba por la flexión de brazos.\n','https://media.tenor.com/LfaWouy1fq8AAAAd/dips-chest-day.gif'),(22,'remo sentado','Los brazos en la posición inicial deben quedar extendidos, sujetados a la polea baja mediante el maneral y el torso debe permanecer erguido. Sin movilizar el torso, jalamos del maneral llevando hacia atrás los codos mientras inspiramos, hasta que el maneral queda justo frente al esternón. sentarnos frente al aparato al cual previamente le tenemos que fijar una manera de doble agarre a la polea baja. Apoyamos los pies en a la plataforma y con las rodillas flexionadas y la espalda bien recta tomamos el maneral con ambas manos para dar inicio al ejercicio.','https://media.tenor.com/RXqfxsyaif8AAAAd/aidoh-adrian.gif'),(23,'curl sentado femoral','Siéntate en la máquina y apoya la espalda en el respaldo, apoya los gemelos en el cojín inferior de la máquina y ajusta el cojín de la cadera sobre tus muslos (entre las rodillas y la cadera) para sujetar tus piernas, esta sería la posición inicial del ejercicio, con las piernas extendidas hacia delante y el tren inferior de cuerpo bloqueado contra los cojines de la máquina, luego flexiona las rodillas utilizando sólo los isquiotibiales para mover el cojín inferior hacia abajo la máquina hasta llegar al tope.','https://media.tenor.com/o6yNvsymDcIAAAAd/leg-day-stephen-farrelly.gif'),(24,'zancada','colocarnos inicialmente de pie, con las piernas ligeramente separadas del ancho de la cadera y al comenzar el movimiento debemos inspirar y efectuar una zancada, es decir dar un paso adelante con una pierna manteniendo el torso lo más recto posible. \nLa pierna desplazada hacia adelante debe flexionarse por su rodilla hasta que el muslo quede paralelo al suelo y la rodilla flexionada forme con la pierna un ángulo de 90 grados. La pierna que no se desplaza debe quedar anclada con el pie al suelo, pero debe descender hacia el mismo por la rodilla. Espirando se regresa a la posición inicial.\n','https://media.tenor.com/N15GUJ5GsAsAAAAd/shohei-ohtani-%E5%A4%A7%E8%B0%B7%E7%BF%94%E5%B9%B3.gif'),(25,'gemelos sentado','Empuje los talones hacia arriba tanto como pueda mientras exhala. Vuelva a la posición inicial con un movimiento suave mientras inhala, evitando que los pesos en movimiento toquen el resto de la placas. ','https://www.thingys.com.ar/gymapps/tutorial/sentado.gif'),(26,'copa','Sostén por uno o dos segundos y desciende los brazos con las mancuernas tras la cabeza, siempre manteniendo la estabilidad máxima posible en las articulaciones, y llevando a cabo un movimiento recto.\nJusto antes de que las mancuernas toquen tu cuerpo, detente. Finalmente, realiza el movimiento de forma invertida; es decir, lleva las mancuernas una vez más hacia arriba de tu cabeza y, posteriormente, hacia adelante.','https://media.tenor.com/4uUqI5Ue42UAAAAd/working-out-sheamus.gif'),(27,'descanso','Descansa de la actividad fisica, recuerda que el musculo crece es en el descanso. Ten un feliz dia :D','https://media.tenor.com/wqUCD8rT1lsAAAAC/healing-chamber-goku-healing.gif'),(28,'extensiones de rodilla','Sentado en una silla, extienda la pierna izquierda hasta que esté paralela al piso. Evite tensar su rodilla. Luego, baje lentamente el pie hacia el suelo. Repita con la pierna derecha, alternando una y otra vez cada pierna.','https://i.pinimg.com/originals/86/58/3b/86583b5edc26f2f37684b6072e8db636.gif'),(29,'rodilla al pecho','Acostado cómodamente, lleve la pierna derecha a su pecho y ahí apriete su torso, luego baje la pierna. Concéntrese en trabajar su torso para hacer este movimiento, y no su pierna. ','https://itramed.com/wp-content/uploads/2016/02/ejercicios-columna-lumbar.gif'),(30,'marchando sentado','Sentado en una silla, levante la pierna afectada hacia su pecho, haciendo todo lo posible por mantener un movimiento controlado.\nLuego coloque su pie nuevamente en el suelo. Repita con la otra pierna, alternando pierna derecha e izquierda','https://www.clikisalud.net/wp-content/uploads/2022/09/ejercicios-mejoran-movilidad-realizar-sentado.jpg'),(31,'movimiento circular brazo','Entrelace sus manos alrededor de una botella de agua. Después, haga grandes movimientos circulares. Puede usar su brazo no afectado para guiar su brazo afectado. Recuerda extender bien tus brazos','https://media.tenor.com/a0N_YVzDJXkAAAAC/made-by-cameron-circle.gif'),(32,'movimiento de brazo abierto','Sostenga una botella de agua con la mano afectada y mantenga los codos pegados a los costados. Luego, con los brazos doblados a 90 grados, abra los brazos para que los antebrazos salgan hacia los lados. Regrese los brazos hacia el centro y repita lentamente. ','null'),(33,'inclinacion sosteniendo peso','Estando sentado, apóyese sobre su brazo afectado a aproximadamente medio metro de distancia de su cuerpo. Luego inclínese hacia él.\nSi se siente bien, aguante el estiramiento durante 10 segundos más o menos. Y si no se siente bien, detenga el estiramiento de inmediato.\nDespués de aproximadamente 10 segundos, coloque el otro brazo a su lado para que ambos brazos lo sostengan. Luego muévase de lado a lado, cambiando su peso de un brazo a otro.','https://cdn.flintrehab.com/uploads/2018/09/stroke-exercises-for-shoulders-lean.jpg'),(34,'movimiento de empuje','Coloque una botella de agua sobre una mesa y empújela a través de la mesa con la parte posterior de la muñeca afectada. Haga su mejor esfuerzo para evitar elevar el hombro.\nUna vez que la botella haya llegado al otro lado de la mesa, enganche la parte frontal de su muñeca alrededor de la botella y empújela de regreso.\n','https://cdn.flintrehab.com/uploads/2020/03/ejercicios-de-ACV-para-brazos-empuje-2-1.jpg'),(35,'movimiento de puñetazo','Ahora, Coloque la botella cerca de usted y luego empújela con el brazo afectado. Mantenga su antebrazo sobre la mesa y trate de no elevar el hombro','https://cdn.flintrehab.com/uploads/2020/03/ACV-ejercicios-para-brazos-pu%C3%B1etazo-1-1.jpg'),(36,'movimiento de curvatura de muñeca','Mientras mantiene su codo sobre una mesa, use su mano no afectada para estirar la muñeca de su mano afectada.\nEstírela hacia atrás, luego hacia adelante. Realice este movimiento lentamente ','https://media.tenor.com/Dfmr3k90MiUAAAAC/flexor-carpi-ulnaris-wrist-flexion.gif'),(37,'movimiento lateral de muñeca','Coloque su mano afectada sobre la mesa con la palma hacia abajo. Luego, use su mano no afectada para deslizar su mano hacia la izquierda y luego hacia la derecha. Concéntrese en iniciar el movimiento únicamente desde su muñeca.','https://media.tenor.com/LE-xKWbfVmQAAAAC/flexor-carpi-radialis-muscle-wrist-abduction.gif'),(38,'movimiento de rodillo','Coloque una botella de agua en la mano afectada y luego doble los dedos para agarrarla. Ahora suelte.','https://cdn.flintrehab.com/uploads/2018/09/stroke-exercises-for-hands-rolling.png'),(39,'golpes con punta de pie','Mientras está acostado boca arriba, levante las piernas y doble las rodillas en un ángulo de 90 grados.\nDesde allí, baje la pierna izquierda y golpeé suavemente el piso con el pie izquierdo. Luego, regrese la pierna utilizando los músculos abdominales.\nMantenga una curva de 90 grados en su rodilla todo el tiempo.','https://www.naiz.eus/media/asset_publics/resources/000/499/902/article_main_landscape/008PILATES7K368.jpg'),(40,'flexion de biceps sin peso','Coloque el codo sobre una mesa con el brazo doblado a 90 grados. Ahora, eleve el brazo sólo un poco y luego bájelo otro poco.','https://media.tenor.com/CQ9eMRS82TsAAAAC/brachialis-elbow-flexion.gif'),(41,'flexiones de muñeca','Este ejercicio es muy parecido a una flexión de bíceps, ¡excepto por su muñeca!\nPermita que su muñeca se estire hacia abajo y luego doble su muñeca hacia arriba.','https://media.tenor.com/7ZdcKZhgD_sAAAAC/flexor-carpi-radialis-wrist-flexion.gif'),(44,'rotacion de boligrafo','Coloque un bolígrafo sobre la mesa y use los dedos afectados para girarlo. Trate de no usar su hombro durante este movimiento. Si puede, trate de girar rápidamente el bolígrafo ','no encontrado');
/*!40000 ALTER TABLE `tblejercicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblrutina`
--

DROP TABLE IF EXISTS `tblrutina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblrutina` (
  `nivel` varchar(200) NOT NULL,
  `lunes` varchar(2000) NOT NULL,
  `martes` varchar(2000) NOT NULL,
  `miercoles` varchar(2000) NOT NULL,
  `jueves` varchar(2000) NOT NULL,
  `viernes` varchar(2000) NOT NULL,
  `sabado` varchar(2000) NOT NULL,
  `domingo` varchar(2000) NOT NULL,
  PRIMARY KEY (`nivel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='					';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrutina`
--

LOCK TABLES `tblrutina` WRITE;
/*!40000 ALTER TABLE `tblrutina` DISABLE KEYS */;
INSERT INTO `tblrutina` VALUES ('intermedio','press inclinado (3x10-12), press plano (3x10-12), peckdeck (3x10-12), crossover (3x10),jalon al pecho (3x10-12), remo con barra (3x10-12), pullover (3x10)','sentadilla libre (3x10-12), hackup (3x10-12), extensiones (3x10-12), peso muerto (3x10-12), curl femoral (3x10-12), extension gemelos (3x10-12), gemelos sentado (3x10-12)','press militar (3x10-12), elevaciones laterales (4x10-12), elevaciones frontales (3x10), facepull (3x10),curl bicep con barra (3x10-12), predicador (3x12), curl barra alta (3x10-12), curl con cuerda (3x10),fondos (3x12)','jalon al pecho (3x10-12), remo con barra (3x10-12), pull over (3x12),remo sentado (3x10), press plano (3x10-12), press inclinado (3x10-12), peck deck (3x10)','peso muerto (3x12), curl femoral (3x12), curl sentado femoral (3x10), zancada (20 pasos), hack up (3x10-12), extensiones (3x10),extension gemelos (3x10-12), gemelos sentado (3x10-12)','curl barra alta (3x10), copa (3x10), fondos (3x12), curl bicep con barra (3x10-12), predicador (3x12), press militar (3x10-12), elevaciones laterales (4x10-12), elevaciones frontales (3x10),facepull (3x10','descanso'),('novato','press inclinado (3x10-12), press plano (3x10-12), peckdeck (3x10-12), jalon al pecho (3x10-12), remo con barra (3x10-12)','sentadilla libre (3x10-12), hackup (3x10-12), extensiones (3x10-12), peso muerto (3x10-12), curl femoral (3x10-12), extension gemelos (3x10-12), gemelos sentado (3x10-12)','press militar (3x10-12), elevaciones laterales (4x10-12), facepull (3x10),curl bicep con barra (3x10-12), predicador (3x12), curl barra alta (3x10-12), fondos (3x12)','jalon al pecho (3x10-12), remo con barra (3x10-12), pull over (3x12), press plano (3x10-12), press inclinado (3x10-12)','peso muerto (3x12), curl femoral (3x12), zancada (20 pasos), hack up (3x10-12), extensiones (3x10),extension gemelos (3x10-12), gemelos sentado (3x10-12)','curl barra alta (3x10), copa (3x10), fondos (3x12), curl bicep con barra (3x10-12), predicador (3x12), press militar (3x10-12), elevaciones laterales (4x10-12),facepull (3x10)','descanso'),('recuperacion 1','extensiones de rodilla (10 cada pierna),rodilla al pecho (10 cada pierna),marchando sentado (10 cada pierna),movimiento circular brazo (10), movimiento de brazo abierto (10)','inclinacion sosteniendo peso (5), movimiento de empuje (5), movimiento de puñetazo (5),movimiento de curvatura de muñeca (5), movimiento lateral de muñeca (10)','movimiento de rodillo (10),golpes con punta de pie (10),flexion de biceps sin peso (10),flexiones de muñeca (10),rotacion de boligrafo (15)','descanso','descanso','descanso','descanso');
/*!40000 ALTER TABLE `tblrutina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusuarios`
--

DROP TABLE IF EXISTS `tblusuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblusuarios` (
  `correo` varchar(300) NOT NULL,
  `contraseña` varchar(20) NOT NULL,
  `genero` varchar(7) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `apellidos` varchar(60) NOT NULL,
  `edad` int NOT NULL,
  `peso` double DEFAULT NULL,
  `estatura` int DEFAULT NULL,
  `objetivo` varchar(14) DEFAULT NULL,
  `recuperacion` varchar(2) DEFAULT NULL,
  `caloriasMant` double DEFAULT NULL,
  PRIMARY KEY (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusuarios`
--

LOCK TABLES `tblusuarios` WRITE;
/*!40000 ALTER TABLE `tblusuarios` DISABLE KEYS */;
INSERT INTO `tblusuarios` VALUES ('aespinosar@ucundinamarca.edu.co','aer123','hombre','Alejandro','Espinosa Riveros',21,105,192,'aumento','no',4000),('bicastiblanco@ucundinamarca.edu.co','bic123','hombre','Brandon Ivan','Castiblanco Castro',20,78,175,'aumento','no',2500),('dnalonso@ucundinamarca.edu.co','dna123','hombre','Dominic Nicolas','Alonso Barajas',18,78,175,'aumento','no',2500),('luchito@ucundinamarca.edu.co','luchito123','hombre','Luchito','Jimenez',20,76,180,'aumento','no',2791.4),('pepito@gmail.com','pep123','hombre','pepito','Miranda',20,80,180,'aumento','si',2846.2);
/*!40000 ALTER TABLE `tblusuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusuarioxrutina`
--

DROP TABLE IF EXISTS `tblusuarioxrutina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblusuarioxrutina` (
  `idUsuxRut` int NOT NULL AUTO_INCREMENT,
  `correoUsu` varchar(300) NOT NULL,
  `nivelRut` varchar(200) NOT NULL,
  PRIMARY KEY (`idUsuxRut`),
  UNIQUE KEY `i_correo` (`correoUsu`),
  KEY `tblusuarioxrutina_ibfk_2` (`nivelRut`),
  CONSTRAINT `tblusuarioxrutina_ibfk_1` FOREIGN KEY (`correoUsu`) REFERENCES `tblusuarios` (`correo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tblusuarioxrutina_ibfk_2` FOREIGN KEY (`nivelRut`) REFERENCES `tblrutina` (`nivel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusuarioxrutina`
--

LOCK TABLES `tblusuarioxrutina` WRITE;
/*!40000 ALTER TABLE `tblusuarioxrutina` DISABLE KEYS */;
INSERT INTO `tblusuarioxrutina` VALUES (1,'aespinosar@ucundinamarca.edu.co','intermedio'),(2,'dnalonso@ucundinamarca.edu.co','intermedio'),(3,'bicastiblanco@ucundinamarca.edu.co','novato'),(4,'pepito@gmail.com','recuperacion 1');
/*!40000 ALTER TABLE `tblusuarioxrutina` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-30 22:03:58
