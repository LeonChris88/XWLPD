.class final Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VacantCell"
.end annotation


# static fields
.field private static sAcquiredCount:I

.field private static final sLock:Ljava/lang/Object;

.field private static sRoot:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;


# instance fields
.field cellX:I

.field cellY:I

.field private next:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

.field spanX:I

.field spanY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquire()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    .locals 3

    sget-object v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    if-nez v1, :cond_0

    new-instance v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;-><init>()V

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->next:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    sput-object v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    sget v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method release()V
    .locals 3

    sget-object v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    sget v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    sget-object v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->next:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    sput-object p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VacantCell[x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
