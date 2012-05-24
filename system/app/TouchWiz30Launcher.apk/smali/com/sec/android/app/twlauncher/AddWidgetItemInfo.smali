.class Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
.super Lcom/sec/android/app/twlauncher/ItemInfo;
.source "AddWidgetItemInfo.java"


# instance fields
.field private mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mSupportSize:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;J[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;J[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>()V

    const/16 v0, 0xfa4

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iput-wide p2, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    iput-object p4, p0, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;->mSupportSize:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method public getSupportSize()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;->mSupportSize:[Ljava/lang/String;

    return-object v0
.end method
