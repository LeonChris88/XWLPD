.class Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoDefaultComparator;
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
    name = "ApplicationInfoDefaultComparator"
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


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I
    .locals 7

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getDefaultSort()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getDefaultSort()I

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1300(II)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCreateTime()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCreateTime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1400(JJ)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200()Ljava/text/Collator;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    check-cast p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoDefaultComparator;->compare(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    move-result v0

    return v0
.end method
