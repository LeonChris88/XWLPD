.class public Lcom/android/email/activity/bubblelayout/BubbleData;
.super Ljava/lang/Object;
.source "BubbleData.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mContactID:Ljava/lang/String;

.field private mIndex:I

.field private mIsFromContact:Z

.field private mIsValidAddress:Z

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/android/email/activity/bubblelayout/BubbleData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput v0, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/email/activity/bubblelayout/BubbleData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput p3, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mAddress:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mContactID:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v6, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mIsValidAddress:Z

    :goto_0
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    array-length v3, v1

    if-lez v3, :cond_0

    aget-object v3, v1, v5

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mAddress:Ljava/lang/String;

    aget-object v3, v1, v5

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mName:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mContactID:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/email/activity/bubblelayout/BubbleData;->getContactInfoCacheFromContact(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/email/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    :cond_1
    iput-boolean v5, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mIsFromContact:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    iput-boolean v5, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mIsValidAddress:Z

    goto :goto_0

    :cond_4
    iput-boolean v6, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mIsFromContact:Z

    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/email/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mName:Ljava/lang/String;

    :cond_5
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mContactID:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-wide v3, v0, Lcom/android/email/ContactInfoCache$CacheEntry;->data_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mContactID:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getContactInfoCacheFromContact(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;
    .locals 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/email/ContactInfoCache;->getInstance()Lcom/android/email/ContactInfoCache;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/email/ContactInfoCache;->invalidateContact(Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v0, p0, p1, v4}, Lcom/android/email/ContactInfoCache;->getContactInfoForEmailAddress(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v2, v3

    goto :goto_0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isFromContact()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mIsFromContact:Z

    return v0
.end method

.method public isValidAddress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mIsValidAddress:Z

    return v0
.end method

.method public refreshContactInfo()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mContactID:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/email/activity/bubblelayout/BubbleData;->getContactInfoCacheFromContact(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/email/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mIsFromContact:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v3, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mIsFromContact:Z

    iget-object v1, v0, Lcom/android/email/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mContactID:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-wide v1, v0, Lcom/android/email/ContactInfoCache$CacheEntry;->data_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/bubblelayout/BubbleData;->mContactID:Ljava/lang/String;

    goto :goto_0
.end method
