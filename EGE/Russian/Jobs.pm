package EGE::Russian::Jobs;

use strict;
use warnings;
use utf8;

use EGE::Random;
use EGE::Russian;

our @list =
qw(
Автомеханик
Агроном
Адвокат
Актер
Архитектор

Банкир
Бармен
Библиотекарь
Биолог
Бортпроводник
Брокер
Бухгалтер

Водитель
Веб-дизайнер
Верстальщик
Ветеринар
Воспитатель
Врач

Геолог
Гид
Горнорабочий

Дизайнер
Диктор
Дирижёр
Диспетчер

Журналист

Закройщик
Зооинженер

Иллюстратор
Инженер
Инкассатор

Каменщик
Кассир
Кинолог
Коммерсант
Композитор
Кондитер
Косметолог

Лаборант
Логистик
Логопед
Литейщик
Лингвист

Маляр
Маркетолог
Массажист
Математик
Машинист
Менеджер
Металлург
Монтажник
Музыкант

Нотариус

Окулист
Официант
Охотник

Парикмахер
Пекарь
Педиатр
Переводчик
Пианист
Писатель
Плотник
Повар
Портной
Продавец
Проходчик
Переводчик
Программист
Прораб
Психолог

Радист
Риэлтер
Режиссёр

Сантехник
Сварщик
Секретарь
Скрипач
Следователь
Слесарь
Социолог
Сталевар
Строитель
Столяр
Стоматолог

Таксист
Телеведущий
Телохранитель
Тестер
Техник
Технолог
Ткач
Токарь
Товаровед
Тракторист

Учитель

Фармацевт
Физик
Финансист
Фрезеровщик
Фотограф

Химик
Хирург
Хореограф
Художник

Шахтёр
Штукатур

Электромонтер
Эколог
Экономист
Электрик

Ювелир
Юрист
);

my $h;
sub different_jobs { EGE::Russian::different(\$h, \@list, $_[0]) }

1;
