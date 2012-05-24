.class Lcom/sec/android/app/calculator/History;
.super Ljava/lang/Object;
.source "History.java"


# instance fields
.field mEntries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/app/calculator/HistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field mObserver:Landroid/widget/BaseAdapter;

.field mPos:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/sec/android/app/calculator/History;->clear()V

    return-void
.end method

.method constructor <init>(ILjava/io/DataInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    const/4 v2, 0x1

    if-lt p1, v2, :cond_1

    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    new-instance v3, Lcom/sec/android/app/calculator/HistoryEntry;

    invoke-direct {v3, p1, p2}, Lcom/sec/android/app/calculator/HistoryEntry;-><init>(ILjava/io/DataInput;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/calculator/History;->mPos:I

    return-void

    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private notifyChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/calculator/History;->mObserver:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/calculator/History;->mObserver:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method clear()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    new-instance v1, Lcom/sec/android/app/calculator/HistoryEntry;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/calculator/HistoryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/calculator/History;->mPos:I

    invoke-direct {p0}, Lcom/sec/android/app/calculator/History;->notifyChanged()V

    return-void
.end method

.method current(I)Lcom/sec/android/app/calculator/HistoryEntry;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/calculator/HistoryEntry;

    return-object v0
.end method

.method enter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    new-instance v2, Lcom/sec/android/app/calculator/HistoryEntry;

    invoke-direct {v2, p1, p2}, Lcom/sec/android/app/calculator/HistoryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/calculator/History;->mPos:I

    invoke-direct {p0}, Lcom/sec/android/app/calculator/History;->notifyChanged()V

    return-void
.end method

.method public isHistory()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/calculator/History;->current(I)Lcom/sec/android/app/calculator/HistoryEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/HistoryEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v2, p0, Lcom/sec/android/app/calculator/History;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/calculator/HistoryEntry;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/calculator/HistoryEntry;->write(Ljava/io/DataOutput;)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/sec/android/app/calculator/History;->mPos:I

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
