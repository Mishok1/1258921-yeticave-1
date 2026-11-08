<?php

/**
 * @var string $title
 * @var string $main_header
 * @var string $page_content
 * @var string $main_footer
 * @var string[] $categories
 */
?>


<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <title><?= $title ?></title>
    <link href="../css/normalize.min.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
</head>

<body>
    <div class="page-wrapper">

        <?= $main_header ?>

        <main class="container">
            <?= $page_content ?>
        </main>
    </div>

    <?= $main_footer ?>
    ?>

    <script src="flatpickr.js"></script>
    <script src="script.js"></script>
</body>

</html>
