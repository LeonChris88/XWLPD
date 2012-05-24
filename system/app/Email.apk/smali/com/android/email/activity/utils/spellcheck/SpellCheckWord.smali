.class public Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;
.super Ljava/lang/Object;
.source "SpellCheckWord.java"


# instance fields
.field private mStartPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;->mWord:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;->mStartPos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;->mStartPos:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;->mStartPos:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addPos(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;->mStartPos:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/SpellCheckWord;->mWord:Ljava/lang/String;

    return-object v0
.end method
