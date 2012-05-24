.class public Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;
.super Ljava/lang/Object;
.source "SpellCheckInValidWordList.java"


# instance fields
.field private mWordlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addStartPos(Ljava/lang/String;I)V
    .locals 3

    iget-object v2, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;

    invoke-virtual {v1}, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;->addPos(I)V

    :cond_1
    return-void
.end method

.method private wordExist(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;

    invoke-virtual {v1}, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

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


# virtual methods
.method public addInValidWord(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->wordExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;

    invoke-direct {v1, p1, p2}, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->addStartPos(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public resetList()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckInValidWordList;->mWordlList:Ljava/util/ArrayList;

    return-void
.end method
