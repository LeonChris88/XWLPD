.class public Lcom/android/email/activity/utils/spellcheck/UserDictionary;
.super Lcom/android/email/activity/utils/spellcheck/Dictionary;
.source "UserDictionary.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNewWordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/database/ContentObserver;

.field private mRequiresReload:Z

.field private mWordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "word"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "frequency"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/email/activity/utils/spellcheck/Dictionary;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/email/activity/utils/spellcheck/UserDictionary$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/email/activity/utils/spellcheck/UserDictionary$1;-><init>(Lcom/android/email/activity/utils/spellcheck/UserDictionary;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-object p1, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->loadDictionary()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/email/activity/utils/spellcheck/UserDictionary;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mRequiresReload:Z

    return p1
.end method

.method private addWords(Landroid/database/Cursor;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->clearDictionary()V

    const/16 v1, 0x30

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x30

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private clearDictionary()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private declared-synchronized loadDictionary()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mWordList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mWordList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->PROJECTION:[Ljava/lang/String;

    const-string v3, "(locale IS NULL) or (locale=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v6}, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->addWords(Landroid/database/Cursor;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mRequiresReload:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addWord(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mNewWordList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mNewWordList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mNewWordList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkReloadDictionary()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mRequiresReload:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->loadDictionary()V

    :cond_0
    return-void
.end method

.method public commit()V
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mNewWordList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mNewWordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v3, v3}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getWordList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mWordList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mWordList:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mNewWordList:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mWordList:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mWordList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mNewWordList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->mNewWordList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    move v3, v4

    goto :goto_0
.end method
