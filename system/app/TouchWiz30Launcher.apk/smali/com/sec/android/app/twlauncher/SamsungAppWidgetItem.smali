.class public Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
.super Ljava/lang/Object;
.source "SamsungAppWidgetItem.java"


# instance fields
.field public mClassName:Ljava/lang/String;

.field public mDescription:Ljava/lang/String;

.field public mHorizontalHeight:I

.field public mHorizontalWidth:I

.field public mOrder:I

.field public mPackageName:Ljava/lang/String;

.field public mThemeName:Ljava/lang/String;

.field public mVerticalHeight:I

.field public mVerticalWidth:I

.field public mWidgetIcon:Landroid/graphics/drawable/Drawable;

.field public mWidgetId:Ljava/lang/String;

.field public mWidgetPreview:I

.field public mWidgetTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeight(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I

    goto :goto_0
.end method

.method public getWidth(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    goto :goto_0
.end method
