.class public Lcom/android/calendar/CalendarSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "CalendarSettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final DAY_VIEW_EVENT_LIST:Ljava/lang/String;

.field static final DAY_VIEW_TIME_GRID:Ljava/lang/String;

.field static final DEFAULT_DAY_VIEW:Ljava/lang/String;

.field static final DEFAULT_DETAILED_VIEW:Ljava/lang/String;

.field static final DEFAULT_START_VIEW:Ljava/lang/String;

.field private static mTimezones:[[Ljava/lang/CharSequence;


# instance fields
.field mAlertType:Landroid/preference/ListPreference;

.field private mCalendarSync:Ljava/lang/String;

.field private mCalendars:Ljava/lang/String;

.field mDayView:Landroid/preference/ListPreference;

.field mDefaultView:Landroid/preference/ListPreference;

.field mFirstDayOfWeek:Landroid/preference/ListPreference;

.field mHomeTZ:Landroid/preference/ListPreference;

.field mRingtone:Landroid/preference/RingtonePreference;

.field private mTZUpdater:Ljava/lang/Runnable;

.field mUseHomeTZ:Landroid/preference/CheckBoxPreference;

.field mVibrateWhen:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x2

    sget-object v0, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_START_VIEW:Ljava/lang/String;

    sget-object v0, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v2

    sput-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DAY_VIEW_TIME_GRID:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DAY_VIEW_EVENT_LIST:Ljava/lang/String;

    sget-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DAY_VIEW_TIME_GRID:Ljava/lang/String;

    sput-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mTZUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "com.android.calendar_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private setSummary()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mDefaultView:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mDefaultView:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mDayView:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mDayView:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mFirstDayOfWeek:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mFirstDayOfWeek:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mAlertType:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mAlertType:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mVibrateWhen:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20

    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarSettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lcom/android/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    const-string v2, "com.android.calendar_preferences"

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    const v2, 0x7f050002

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/CalendarSettingsActivity;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string v2, "preferences_default_view"

    invoke-virtual {v12, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mDefaultView:Landroid/preference/ListPreference;

    const-string v2, "preferences_day_view"

    invoke-virtual {v12, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mDayView:Landroid/preference/ListPreference;

    const-string v2, "preferences_first_day_of_week"

    invoke-virtual {v12, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mFirstDayOfWeek:Landroid/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v2, 0x7f0a002d

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mCalendars:Ljava/lang/String;

    const v2, 0x7f0a008c

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mCalendarSync:Ljava/lang/String;

    const-string v2, "view_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/CalendarSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    const-string v2, "pref_key_manage_SD_events"

    invoke-virtual {v12, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "preferences_alerts_type"

    invoke-virtual {v12, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mAlertType:Landroid/preference/ListPreference;

    const-string v2, "preferences_alerts_vibrateWhen"

    invoke-virtual {v12, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mVibrateWhen:Landroid/preference/ListPreference;

    const-string v2, "preferences_alerts_ringtone"

    invoke-virtual {v12, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/RingtonePreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mRingtone:Landroid/preference/RingtonePreference;

    const-string v2, "preferences_home_tz_enabled"

    invoke-virtual {v12, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "preferences_home_tz"

    invoke-virtual {v12, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v17, :cond_1

    :cond_0
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Lcom/android/calendar/TimezoneAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/calendar/TimezoneAdapter;->getAllTimezones()[[Ljava/lang/CharSequence;

    move-result-object v2

    sput-object v2, Lcom/android/calendar/CalendarSettingsActivity;->mTimezones:[[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    sget-object v3, Lcom/android/calendar/CalendarSettingsActivity;->mTimezones:[[Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    sget-object v3, Lcom/android/calendar/CalendarSettingsActivity;->mTimezones:[[Ljava/lang/CharSequence;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v2}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "preferences_alerts_ringtone"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v2, "default"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://settings/system/notification_sound"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    const-string v2, "content://media/internal/audio/media/67"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "title LIKE \'%On Time%\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v2}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preferences_alerts_ringtone"

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/CalendarSettingsActivity;->setSummary()V

    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarSettingsActivity;->mTZUpdater:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    const-string v0, "auto"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCalendars:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarSettingsActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCalendarSync:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "authorities"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SYNC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "authorities"

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "com.android.calendar"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const-string v0, "preferences_default_view"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mDefaultView:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mDefaultView:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "preferences_day_view"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mDayView:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mDayView:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->setDayView(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/calendar/CalendarSettingsActivity;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "preferences_first_day_of_week"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mFirstDayOfWeek:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mFirstDayOfWeek:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "2"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->setFirstdayOfWeek(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "2"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/calendar/CalendarSettingsActivity;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "preferences_alerts_type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mAlertType:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mAlertType:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const-string v0, "preferences_alerts_vibrateWhen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mVibrateWhen:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const-string v0, "preferences_hide_declined"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "preferences_hide_contacts_events"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/calendar/CalendarSettingsActivity;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public sendBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.calendar.CHANGESHARE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarSettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
