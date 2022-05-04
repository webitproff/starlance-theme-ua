<?php
/**
 * Ukrainian langfile for mcaptcha
 *
 * @package MathCaptcha
 */

defined('COT_CODE') or die('Wrong URL');

$L['info_desc'] = 'Математична CAPTCHA. Захищає ваш сайт від спам-ботів за допомогою простих арифметичних завдань. Потребує JavaScript.';

$L['mcaptcha_error'] = 'Помилка: занадто багато спроб, спробуйте пізніше.';
$L['captcha_verification_failed'] = 'Вирішено невірно.';

$L['cfg_delay'] = 'Затримка проти хаммерінга';
$L['cfg_delay_hint'] = 'сек.';
$L['cfg_attempts'] = 'Макс. число спроб в секунду';
$L['cfg_attempts_hint'] = '0 - не обмежена';
