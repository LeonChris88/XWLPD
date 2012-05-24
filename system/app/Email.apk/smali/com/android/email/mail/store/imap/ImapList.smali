.class public Lcom/android/email/mail/store/imap/ImapList;
.super Lcom/android/email/mail/store/imap/ImapElement;
.source "ImapList.java"


# static fields
.field public static final EMPTY:Lcom/android/email/mail/store/imap/ImapList;


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/mail/store/imap/ImapElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/email/mail/store/imap/ImapList$1;

    invoke-direct {v0}, Lcom/android/email/mail/store/imap/ImapList$1;-><init>()V

    sput-object v0, Lcom/android/email/mail/store/imap/ImapList;->EMPTY:Lcom/android/email/mail/store/imap/ImapList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapElement;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method private final flatten(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    if-lez v1, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v2

    invoke-direct {v2, p1}, Lcom/android/email/mail/store/imap/ImapList;->flatten(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapElement;->isString()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 v2, 0x5d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1
.end method


# virtual methods
.method add(Lcom/android/email/mail/store/imap/ImapElement;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t add null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final contains(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public destroy()V
    .locals 3

    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/imap/ImapElement;

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapElement;->destroy()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    :cond_1
    invoke-super {p0}, Lcom/android/email/mail/store/imap/ImapElement;->destroy()V

    return-void
.end method

.method public equalsForTest(Lcom/android/email/mail/store/imap/ImapElement;)Z
    .locals 5

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/email/mail/store/imap/ImapElement;->equalsForTest(Lcom/android/email/mail/store/imap/ImapElement;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/email/mail/store/imap/ImapList;

    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v4

    if-eq v2, v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapElement;

    invoke-virtual {v1, v0}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/email/mail/store/imap/ImapElement;->equalsForTest(Lcom/android/email/mail/store/imap/ImapElement;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final flatten()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapList;->flatten(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/android/email/mail/store/imap/ImapElement;->NONE:Lcom/android/email/mail/store/imap/ImapElement;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/imap/ImapElement;

    goto :goto_0
.end method

.method final getKeyedElementOrNull(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapElement;
    .locals 2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/email/mail/store/imap/ImapList;->is(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/imap/ImapElement;

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapList;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyedListOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapList;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedElementOrNull(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/email/mail/store/imap/ImapList;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/email/mail/store/imap/ImapList;->EMPTY:Lcom/android/email/mail/store/imap/ImapList;

    goto :goto_0
.end method

.method public final getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedElementOrNull(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/email/mail/store/imap/ImapString;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/email/mail/store/imap/ImapString;->EMPTY:Lcom/android/email/mail/store/imap/ImapString;

    goto :goto_0
.end method

.method public final getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/email/mail/store/imap/ImapList;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/email/mail/store/imap/ImapList;->EMPTY:Lcom/android/email/mail/store/imap/ImapList;

    goto :goto_0
.end method

.method public final getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapElement;->isString()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/email/mail/store/imap/ImapString;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/email/mail/store/imap/ImapString;->EMPTY:Lcom/android/email/mail/store/imap/ImapString;

    goto :goto_0
.end method

.method public final is(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/mail/store/imap/ImapList;->is(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final is(ILjava/lang/String;Z)Z
    .locals 1

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/email/mail/store/imap/ImapString;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isList()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isString()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
