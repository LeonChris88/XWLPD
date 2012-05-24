.class public Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/util/CalendarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeZoneUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
    }
.end annotation


# static fields
.field private static final DAY_VIEW_ARGS:[Ljava/lang/String;

.field private static final FIRSTDAY_OF_WEEK_ARGS:[Ljava/lang/String;

.field private static final TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

.field private static final TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

.field private static mF:Ljava/util/Formatter;

.field private static volatile mFirstTZRequest:Z

.field private static mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

.field private static volatile mHomeTZ:Ljava/lang/String;

.field private static mSB:Ljava/lang/StringBuilder;

.field private static mTZCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mTZQueryInProgress:Z

.field private static mToken:I

.field private static volatile mUseHomeTZ:Z


# instance fields
.field private final mPrefsName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "timezoneType"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "timezoneInstances"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "firstdayOfWeek"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->FIRSTDAY_OF_WEEK_ARGS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "dayView"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->DAY_VIEW_ARGS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mF:Ljava/util/Formatter;

    sput-boolean v4, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    sput-boolean v3, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    sput-boolean v3, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    sput v4, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    return p0
.end method


# virtual methods
.method public format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {p2, p3, p4, v1}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 11

    move/from16 v0, p6

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_0

    const-string v8, "UTC"

    :goto_0
    sget-object v10, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    monitor-enter v10

    :try_start_0
    sget-object v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v2, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mF:Ljava/util/Formatter;

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    invoke-static/range {v1 .. v8}, Lcom/android/calendar/util/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "pm"

    const-string v2, " PM"

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "am"

    const-string v3, " AM"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 11

    sget-object v10, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v10

    :try_start_0
    sget-boolean v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    iget-object v0, p0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/calendar/util/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v0, "preferences_home_tz_enabled"

    const/4 v1, 0x0

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    const-string v0, "preferences_home_tz"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-boolean v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    :goto_1
    return-object v0

    :catch_0
    move-exception v8

    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_3
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setDayView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->cancelOperation(I)V

    :cond_0
    new-instance v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    :cond_1
    sget-object v0, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v7, v0, v1

    const-string v0, "value"

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    const-string v5, "key=?"

    sget-object v6, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->DAY_VIEW_ARGS:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setFirstDayOfWeek(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->cancelOperation(I)V

    :cond_0
    new-instance v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    :cond_1
    const-string v0, "value"

    invoke-virtual {v4, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    const-string v5, "key=?"

    sget-object v6, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->FIRSTDAY_OF_WEEK_ARGS:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 15

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v14, 0x0

    sget-object v2, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_0
    const-string v1, "auto"

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v1, :cond_2

    const/4 v14, 0x1

    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v14, :cond_0

    iget-object v1, p0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/calendar/util/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v1, "preferences_home_tz_enabled"

    sget-boolean v2, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    invoke-static {v13, v1, v2}, Lcom/android/calendar/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    const-string v1, "preferences_home_tz"

    sget-object v2, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    invoke-static {v13, v1, v2}, Lcom/android/calendar/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v2, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->cancelOperation(I)V

    :cond_3
    new-instance v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    sput v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    :cond_4
    const-string v2, "value"

    sget-boolean v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v1, :cond_8

    const-string v1, "home"

    :goto_2
    invoke-virtual {v5, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v2, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    const-string v6, "key=?"

    sget-object v7, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v1, :cond_0

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "value"

    sget-object v2, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v7, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    const/4 v8, 0x0

    sget-object v9, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    const-string v11, "key=?"

    sget-object v12, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

    invoke-virtual/range {v6 .. v12}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    sget-boolean v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v14, 0x1

    :cond_7
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    sput-object p2, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_8
    const-string v1, "auto"

    goto :goto_2
.end method
