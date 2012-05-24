.class Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationInfoCustomComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mMode:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;->mMode:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;->mMode:I

    iput p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;->mMode:I

    return-void
.end method


# virtual methods
.method public final compare(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I
    .locals 8

    const/4 v7, -0x1

    iget v5, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;->mMode:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v3

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v1

    :goto_0
    if-ne v2, v7, :cond_2

    if-eq v3, v7, :cond_2

    const/4 v4, 0x1

    :cond_0
    :goto_1
    return v4

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditCellNum()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v3

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditCellNum()I

    move-result v1

    goto :goto_0

    :cond_2
    if-eq v2, v7, :cond_3

    if-ne v3, v7, :cond_3

    const/4 v4, -0x1

    goto :goto_1

    :cond_3
    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1300(II)I

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1300(II)I

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200()Ljava/text/Collator;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    check-cast p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;->compare(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    move-result v0

    return v0
.end method
