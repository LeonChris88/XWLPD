.class public Lcom/android/calendar/ContactInfoCache;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ContactInfoCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static sInstance:Lcom/android/calendar/ContactInfoCache;


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/ContactInfoCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheRebuildLock:Ljava/lang/Object;

.field private mCacheRebuilder:Ljava/lang/Thread;

.field private mContactInfoSelectionArgs:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mEmailCacheInvalidated:Z

.field private mPhoneCacheInvalidated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/calendar/ContactInfoCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "data3"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    const-string v1, "contact_presence"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/ContactInfoCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/calendar/ContactInfoCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "data4"

    aput-object v1, v0, v3

    const-string v1, "contact_presence"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/calendar/ContactInfoCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mCacheRebuilder:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mCacheRebuildLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/calendar/ContactInfoCache;->mPhoneCacheInvalidated:Z

    iput-boolean v1, p0, Lcom/android/calendar/ContactInfoCache;->mEmailCacheInvalidated:Z

    iput-object p1, p0, Lcom/android/calendar/ContactInfoCache;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance()Lcom/android/calendar/ContactInfoCache;
    .locals 1

    sget-object v0, Lcom/android/calendar/ContactInfoCache;->sInstance:Lcom/android/calendar/ContactInfoCache;

    return-object v0
.end method

.method private getPresenceIconResourceId(I)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/provider/ContactsContract$Presence;->getPresenceIconResourceId(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/calendar/ContactInfoCache;

    invoke-direct {v0, p0}, Lcom/android/calendar/ContactInfoCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/calendar/ContactInfoCache;->sInstance:Lcom/android/calendar/ContactInfoCache;

    return-void
.end method

.method private loadAvatar(Lcom/android/calendar/ContactInfoCache$CacheEntry;Landroid/database/Cursor;)V
    .locals 9

    iget-wide v5, p1, Lcom/android/calendar/ContactInfoCache$CacheEntry;->person_id:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/calendar/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p1, Lcom/android/calendar/ContactInfoCache$CacheEntry;->person_id:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/calendar/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/calendar/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p1, Lcom/android/calendar/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    const/4 v5, 0x0

    iput-object v5, p1, Lcom/android/calendar/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method

.method private queryContactInfoByNumber(Ljava/lang/String;)Lcom/android/calendar/ContactInfoCache$CacheEntry;
    .locals 9

    const/4 v2, 0x0

    new-instance v7, Lcom/android/calendar/ContactInfoCache$CacheEntry;

    invoke-direct {v7, p0}, Lcom/android/calendar/ContactInfoCache$CacheEntry;-><init>(Lcom/android/calendar/ContactInfoCache;)V

    iput-object p1, v7, Lcom/android/calendar/ContactInfoCache$CacheEntry;->phoneNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    aput-object p1, v0, v2

    iget-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "orderof"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iget-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/ContactInfoCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/ContactInfoCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "PHONE_NUMBERS_EQUAL(data1,?) AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    iget-object v4, p0, Lcom/android/calendar/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v0, "Mms/cache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryContactInfoByNumber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") returned NULL cursor!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contact uri used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/ContactInfoCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v7

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/calendar/ContactInfoCache$CacheEntry;->phoneLabel:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/calendar/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/calendar/ContactInfoCache$CacheEntry;->person_id:J

    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/ContactInfoCache;->getPresenceIconResourceId(I)I

    move-result v0

    iput v0, v7, Lcom/android/calendar/ContactInfoCache$CacheEntry;->presenceResId:I

    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/calendar/ContactInfoCache$CacheEntry;->presenceText:Ljava/lang/String;

    invoke-direct {p0, v7, v6}, Lcom/android/calendar/ContactInfoCache;->loadAvatar(Lcom/android/calendar/ContactInfoCache$CacheEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    throw v0
.end method

.method private queryEmailDisplayName(Ljava/lang/String;)Lcom/android/calendar/ContactInfoCache$CacheEntry;
    .locals 11

    const/4 v2, 0x0

    new-instance v8, Lcom/android/calendar/ContactInfoCache$CacheEntry;

    invoke-direct {v8, p0}, Lcom/android/calendar/ContactInfoCache$CacheEntry;-><init>(Lcom/android/calendar/ContactInfoCache;)V

    iget-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    aput-object p1, v0, v2

    iget-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "orderof"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iget-object v0, p0, Lcom/android/calendar/ContactInfoCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/ContactInfoCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/calendar/ContactInfoCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v4, "data1=? AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    iget-object v5, p0, Lcom/android/calendar/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/ContactInfoCache;->getPresenceIconResourceId(I)I

    move-result v0

    iput v0, v8, Lcom/android/calendar/ContactInfoCache$CacheEntry;->presenceResId:I

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/calendar/ContactInfoCache$CacheEntry;->person_id:J

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v9, v8, Lcom/android/calendar/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/android/calendar/ContactInfoCache;->loadAvatar(Lcom/android/calendar/ContactInfoCache$CacheEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_3
    return-object v8

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    throw v0
.end method


# virtual methods
.method public getContactInfo(Ljava/lang/String;Z)Lcom/android/calendar/ContactInfoCache$CacheEntry;
    .locals 1

    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/ContactInfoCache;->getContactInfoForEmailAddress(Ljava/lang/String;Z)Lcom/android/calendar/ContactInfoCache$CacheEntry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/ContactInfoCache;->getContactInfoForPhoneNumber(Ljava/lang/String;Z)Lcom/android/calendar/ContactInfoCache$CacheEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public getContactInfoForEmailAddress(Ljava/lang/String;Z)Lcom/android/calendar/ContactInfoCache$CacheEntry;
    .locals 3

    iget-object v2, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ContactInfoCache$CacheEntry;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/android/calendar/ContactInfoCache$CacheEntry;->isStale()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    monitor-exit v2

    :goto_0
    return-object v0

    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/calendar/ContactInfoCache;->queryEmailDisplayName(Ljava/lang/String;)Lcom/android/calendar/ContactInfoCache$CacheEntry;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_2
    iget-object v1, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getContactInfoForPhoneNumber(Ljava/lang/String;Z)Lcom/android/calendar/ContactInfoCache$CacheEntry;
    .locals 3

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ContactInfoCache$CacheEntry;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/android/calendar/ContactInfoCache$CacheEntry;->isStale()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    monitor-exit v2

    :goto_0
    return-object v0

    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/calendar/ContactInfoCache;->queryContactInfoByNumber(Ljava/lang/String;)Lcom/android/calendar/ContactInfoCache$CacheEntry;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_2
    iget-object v1, p0, Lcom/android/calendar/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
