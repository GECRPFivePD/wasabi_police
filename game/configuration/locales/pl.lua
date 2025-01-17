-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
if not Config.Language then Config.Language = 'pl' end
if Config.Language ~= 'pl' then return end

Strings = {

    jail_countdown_header = 'JESTEŚ W WIĘZIENIU',
    jail_countdown_sentence = 'Pozostało %s miesięcy',
    jail_time_up = 'Kara więzienia zakończona',
    jail_time_up_desc = 'Odsiedziałeś swój czas w więzieniu.',

    no_society_account = 'Nie znaleziono konta społeczeństwa dla %s - sprawdź swoją konfigurację!',
    officer = 'Oficer',
    not_authorized = 'Nieautoryzowany',
    not_authorized_desc = 'Nie masz uprawnień do korzystania z tego!',
    not_on_duty = 'Nie na służbie',
    not_on_duty_desc = 'Nie jesteś na służbie!',
    gps_enabled = 'GPS Włączony',
    gps_enabled_desc = 'Włączyłeś GPS',
    gps_disabled = 'GPS Wyłączony',
    gps_disabled_desc = 'Wyłączyłeś GPS',

    new_speed_trap = 'Nowa pułapka prędkości',
    speed_limit = 'Ograniczenie prędkości',
    incorrect_input = 'Niepoprawne dane wejściowe',
    incorrect_input_cancel = 'Anulowano poprzednie dane wejściowe.',
    incorrect_input_speed = 'Proszę wprowadzić poprawne ograniczenie prędkości.',
    radar_post = 'Radar',
    ui_radar_post_place = 'E - Umieść post  \n R - Obróć  \n BACK - Anuluj  \n UP/DOWN - Odległość',
    radar_post_placed = 'Radar został pomyślnie umieszczony.',
    radar_post_failed = 'Nie udało się umieścić radaru.',
    speed_trap_rename = 'Zmień nazwę %s',
    speed_trap = 'Pułapka prędkości',
    new_name = 'Nowa nazwa',
    speed_trap_renamed = 'Pomyślnie zmieniłeś nazwę %s na %s.',
    speed_trap_rename_failed = 'Nie udało się zmienić nazwy radaru!',
    manage_trap_rename = 'Zmień nazwę radaru',
    manage_trap_rename_desc = 'Edytuj nazwę tego radaru',
    manage_trap_delete = 'Usuń radar',
    manage_trap_delete_desc = 'Usuń ten radar',
    menu_trap_create = 'Utwórz radar',
    menu_trap_create_desc = 'Utwórz radar w pobliżu swojej bieżącej lokalizacji',
    menu_trap_manage = 'Zarządzaj radarem',
    menu_trap_manage_desc = 'Zarządzaj najbliższym radarem.',
    menu_select_trap = 'Wybierz radar',
    menu_radar_posts = 'Posty radarowe',
    menu_radar_posts_desc = 'Rozmieść/Usuń posty radarowe.',
    warning_speedtrap_table =
    '^0[^1OSTRZEŻENIE^0] Tabela bazy danych pułapek prędkości nie została automatycznie utworzona!',

    license_self = 'Siebie',
    grade_too_low = 'Zbyt niski stopień',
    grade_too_low_desc = 'Twój stopień jest zbyt niski, aby wykonać tę czynność!',
    invoice_amount = 'Kwota faktury',
    amount_invoice = 'Kwota',
    reason_invoice = 'Powód',
    description_invoice = 'Opis',
    description_invoice_desc = 'Notatki do mandatu',
    tickets_invoice = 'Mandaty',
    tickets_invoice_desc = 'Wybierz mandaty',
    gov_billing = 'Rządowe ściąganie długów',
    fine_id_invoice = 'ID mandatu',
    offenses_invoice = 'Wykroczenia',
    ticket_received = 'Otrzymałeś mandat od %s',
    speedtrap_fine = 'Mandat za przekroczenie prędkości',
    speedtrap_fine_desc = 'Zostałeś ukarany grzywną w wysokości %s%s za przekroczenie prędkości o %s%s na kamerze!',

    evidence_storage = 'Magazyn dowodów',
    locker_number = 'Numer szafki',

    cuffed_last_online = 'Poprzednio skuty kajdankami',
    cuffed_last_online_desc = 'Byłeś skuty kajdankami podczas ostatniego pobytu w mieście.',

    player_in_vehicle = 'Podejrzany w pojeździe',
    player_in_vehicle_desc = 'Przed wykonaniem tej czynności usuń podejrzanego z pojazdu!',
    suspect_died_escort = 'Podejrzany zmarł',
    suspect_died_escort_desc = 'Podejrzany zmarł podczas eskortowania i upuściłeś go.',

    stop_escorting_interact = '[E] - Zatrzymaj eskortę',
    cant_wield = 'Nie można wyposażyć',
    cant_wield_desc = 'Nie możesz tego teraz użyć!',

    jailed_player = 'Podejrzany uwięziony',
    jailed_player_desc = 'Uwięziłeś %s na %s miesięcy.',

    gps_active = 'GPS aktywowany',
    gps_active_desc = 'Gracz %s aktywował swój GPS',
    gps_deactive = 'GPS dezaktywowany',
    gps_deactive_desc = 'Gracz %s dezaktywował swój GPS',

    no_wsb = '^0[^3OSTRZEŻENIE^0] wasabi_bridge NIE został uruchomiony PO frameworku i/lub PRZED zasobem: %s',
    currency = 'zł',
    success = 'Sukces',
    go_back = 'Wróć',
    cloakroom = 'Szatnia',
    civilian_wear = 'Strój cywilny',
    armoury_quantity_dialog = 'Ilość do zamówienia',
    quantity = 'Ilość',
    invalid_amount = 'Nieprawidłowa kwota',
    invalid_amount_desc = 'Proszę wprowadzić prawidłową kwotę',
    successful_purchase_desc = 'Pomyślnie zamówiłeś broń z zbrojowni',
    lacking_funds = 'Brak środków',
    lacking_funds_desc = 'Brakuje ci środków na koncie bankowym na ten zakup',
    no_permission = 'Brak uprawnień',
    no_access_desc = 'Nie masz uprawnień do dostępu do tego!',
    key_map_cuff = 'Skuj gracza kajdankami',
    key_map_tackle = 'Powal gracza podczas sprintu',
    key_map_job = 'Otwórz menu pracy',
    no_nearby = 'Nikogo nie znaleziono',
    no_nearby_desc = 'W pobliżu nikogo nie ma',
    invalid_entry = 'Nieprawidłowe dane',
    invalid_entry_desc = 'Proszę wprowadzić prawidłowe dane.',
    fines = 'Mandaty',
    fines_desc = 'Nałóż mandat na pobliskiego gracza',
    search_player = 'Przeszukaj podejrzanego',
    search_player_desc = 'Przeszukaj pobliskiego podejrzanego',
    jail_player = 'Uwięź podejrzanego',
    jail_player_desc = 'Uwięź pobliskiego podejrzanego',
    minutes_dialog = 'Wymiar kary',
    minutes_dialog_field = 'Miesięcy',
    escort_player = 'Eskortuj podejrzanego',
    escort_player_desc = 'Eskortuj pobliskiego podejrzanego',
    handcuff_hard_player = 'Skuj podejrzanego (mocno)',
    handcuff_hard_player_desc = 'Skuj pobliskiego podejrzanego (mocno)',
    handcuff_soft_player = 'Skuj podejrzanego (łagodnie)',
    handcuff_soft_player_desc = 'Skuj pobliskiego podejrzanego (łagodnie)',
    put_in_vehicle = 'Wsadź do pojazdu',
    put_in_vehicle_desc = 'Wsadź pobliskiego podejrzanego do pojazdu',
    check_id = 'Sprawdź tożsamość',
    check_id_desc = 'Sprawdź ID pobliskiego podejrzanego.',
    id_result_menu = 'Wyniki identyfikacji',
    name = 'Imię',
    job = 'Praca',
    job_position = 'Stanowisko',
    dob = 'Data urodzenia',
    sex = 'Płeć',
    bac = 'BAC',
    licenses = 'Licencje',
    total_licenses = 'Całkowita liczba licencji:',
    no_licenses = 'Brak licencji',
    revoke_license = 'Cofnij licencję',
    license_revoked = 'Licencja cofnięta',
    license_revoked_desc = 'Pomyślnie cofnąłeś licencję',
    armoury_menu = 'Menu zbrojowni',
    take_out_vehicle = 'Wyciągnij z pojazdu',
    take_out_vehicle_desc = 'Wyciągnij podejrzanego z pojazdu',
    not_restrained = 'Cel nie jest skrępowany',
    not_restrained_desc = 'Musisz skrępować przestępcę przed eskortowaniem go',
    vehicle_not_found = 'Nie znaleziono pojazdu',
    vehicle_not_found_desc = 'W pobliżu nie znaleziono pojazdu',
    unconcious = 'Osoba nieprzytomna',
    unconcious_desc = 'Osoba wydaje się być nieprzytomna',
    police_garage = 'Garaż',
    police = 'Policja',
    plate = 'Numer rejestracyjny',
    owner = 'Właściciel',
    possibly_stolen = 'Ostrzeżenie!',
    possibly_stolen_desc = 'Pojazd może być skradziony',
    vehicle_interactions = 'Interakcje z pojazdem',
    vehicle_interactions_desc = 'Sprawdź pobliski pojazd',
    vehicle_information = 'Informacje o pojeździe',
    vehicle_information_desc = 'Informacje o pobliskim pojeździe',
    lockpick_vehicle = 'Wytrych pojazdu',
    locakpick_vehicle_desc = 'Wymuś dostęp do pobliskiego pojazdu',
    lockpick_progress = 'Wytrychowanie pojazdu . . .',
    too_far = 'Za daleko',
    too_far_desc = 'Pojazd docelowy jest za daleko',
    lockpicked = 'Pomyślnie odblokowano',
    lockpicked_desc = 'Pomyślnie odblokowałeś pojazd docelowy',
    cancelled = 'Anulowano',
    cancelled_desc = 'Anulowano ostatnią czynność',
    impound_vehicle = 'Odholuj pojazd',
    impound_vehicle_desc = 'Odholuj pobliski pojazd',
    impounding_progress = 'Odholowywanie pojazdu . . .',
    driver_in_car = 'Kierowca w pojeździe',
    driver_in_car_desc = 'Przed odholowaniem usuń kierowcę z pojazdu!',
    car_impounded_desc = 'Pojazd został odholowany',
    place_object = 'Umieść obiekt',
    place_object_desc = 'Umieść obiekt na podłodze.',
    prop_help_text = 'Naciśnij ~INPUT_CONTEXT~ aby przesunąć obiekt.\nNaciśnij ~INPUT_DETONATE~ aby usunąć obiekt.',
    prop_help_text2 = 'Naciśnij ~INPUT_CONTEXT~ aby umieścić obiekt.',

    seize_cash_title = 'Zajmij gotówkę',
    seize_cash = 'Gotówka zajęta',
    seize_cash_desc = 'Policja(%s) zajęła twoją gotówkę',
    seize_cash_label = 'Gotówka podejrzanego zajęta',
    seize_cash_failed = 'Zajęcie nie powiodło się',
    seize_cash_failed_desc = 'Podejrzany nie ma gotówki',
    fine_sent = 'Mandaty wysłane',
    fine_sent_desc = 'Pomyślnie wysłałeś mandat na kwotę $%s!',
    fine_received = 'Mandat otrzymany',
    fine_received_desc = 'Otrzymałeś mandat na kwotę $%s',
    fine_nomoney = 'Mandat nie powiódł się',
    fine_nomoney_desc = 'Podejrzany nie ma wystarczającej ilości pieniędzy na zapłacenie mandatu (Kwota mandatu: $%s)',
    male = 'Mężczyzna',
    female = 'Kobieta',
    mr = 'Pan',
    mrs = 'Pani',
    debt_collection = 'Ściąganie długów',
    db_email =
    'Drogi %s %s, <br /><br />Centralna Agencja Windykacyjna (CJCA) pobrała mandaty otrzymane od policji.<br />Z twojego konta pobrano <strong>$%s</strong>.<br /><br />Z poważaniem,<br />Pan Wasabi',

    spawn_blocked = 'Garaż zablokowany',
    spawn_blocked_desc = 'Nie możesz wyciągnąć swojego pojazdu, ponieważ jest zablokowany!',

    positive = 'Pozytywny',
    positive_gsr_desc = 'Podejrzany ma pozytywny wynik na obecność pozostałości po wystrzale!',
    negative = 'Negatywny',
    negative_gsr_desc = 'Podejrzany ma negatywny wynik na obecność pozostałości po wystrzale!',
    gsr_test = 'Test GSR',
    gsr_test_desc = 'Przetestuj pobliskiego podejrzanego na obecność pozostałości po wystrzale',
    hands_clean = 'Ręce czyste',
    hands_clean_desc = 'Pomyślnie oczyściłeś ręce z pozostałości po wystrzale!',
    gsr_wash_ui = '[E] - Umyj ręce',

    on_duty = 'Na służbie',
    on_duty_desc = 'Jesteś teraz na służbie!',
    off_duty = 'Po służbie',
    off_duty_desc = 'Jesteś teraz po służbie!',

    robbing_player = 'Okrywanie ofiary...',

    cancelled_action = 'Anulowana akcja',
    cancelled_action_desc = 'Twoja ostatnia akcja została anulowana!',

    no_cuffs = 'Brak kajdanek',
    no_cuffs_desc = 'Nie masz kajdanek w kieszeniach!',
    failed = 'Niepowodzenie',
    lockpick_handcuff_success = 'Pomyślnie otworzyłeś kajdanki!',
    lockpick_handcuff_fail = 'Nie udało się otworzyć kajdanek!',
    lockpick_broke = 'Wytrych zgięty',
    lockpick_broke_desc = 'Twój wytrych się zgiął!',
    grant_license = 'Wydaj licencję na broń',
    grant_license_desc = 'Wydaj licencję na broń pobliskiej osobie',
    player_id = 'ID gracza:',
    select_player = 'Wybierz osobę',
    license_granted = 'Licencja przyznana',
    license_granted_desc = 'Przyznałeś licencję na broń %s (%s)',
    license_alr_granted = 'Ta osoba już ma licencję!',
    weapon_license = 'Licencja na broń',
    weapon_license_desc = 'Właśnie otrzymałeś licencję na broń.',

    in_vehicle = 'W pojeździe',
    in_vehicle_desc = 'Nie możesz aresztować podejrzanego będąc w pojeździe!',
}
