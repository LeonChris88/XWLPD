.class public Lcom/android/calendar/DismissAllAlarmsService;
.super Landroid/app/IntentService;
.source "DismissAllAlarmsService.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "state"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/DismissAllAlarmsService;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "DismissAllAlarmsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    const/4 v4, 0x0

    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    const-string v3, "state=1"

    invoke-virtual {p0}, Lcom/android/calendar/DismissAllAlarmsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/calendar/DismissAllAlarmsService;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v2, -0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/DismissAllAlarmsService;->stopSelf()V

    return-void
.end method
