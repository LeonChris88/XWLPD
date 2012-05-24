.class Lcom/sec/android/app/calculator/HistoryEntry;
.super Ljava/lang/Object;
.source "HistoryEntry.java"


# instance fields
.field private mBase:Ljava/lang/String;

.field private mEdited:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/io/DataInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    invoke-interface {p2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/calculator/HistoryEntry;->mBase:Ljava/lang/String;

    invoke-interface {p2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/calculator/HistoryEntry;->mEdited:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/calculator/HistoryEntry;->mBase:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/calculator/HistoryEntry;->mEdited:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getBase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/calculator/HistoryEntry;->mBase:Ljava/lang/String;

    return-object v0
.end method

.method getEdited()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/calculator/HistoryEntry;->mEdited:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/calculator/HistoryEntry;->mBase:Ljava/lang/String;

    return-object v0
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/calculator/HistoryEntry;->mBase:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/HistoryEntry;->mEdited:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
