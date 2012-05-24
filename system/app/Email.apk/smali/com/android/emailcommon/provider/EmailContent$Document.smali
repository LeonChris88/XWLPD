.class public final Lcom/android/emailcommon/provider/EmailContent$Document;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/emailcommon/provider/EmailContent$DocumentColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Document"
.end annotation


# static fields
.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ID_COLUMN_PROJECTION:[Ljava/lang/String;

.field public static final ID_MAILBOX_PROJECTION:[Ljava/lang/String;

.field public static final LIST_PROJECTION:[Ljava/lang/String;

.field public static final UPDATED_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field public mAccountKey:J

.field public transient mAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public mContentLength:J

.field public mContentType:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mFlagFolder:Z

.field public mFlagHidden:Z

.field public mLastModTime:J

.field public mLinkId:Ljava/lang/String;

.field public mMailboxKey:J

.field public mParentFolderLinkId:Ljava/lang/String;

.field public mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/document"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Document;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/updatedDocument"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Document;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "linkId"

    aput-object v1, v0, v4

    const-string v1, "displayName"

    aput-object v1, v0, v5

    const-string v1, "isFolder"

    aput-object v1, v0, v6

    const-string v1, "creationDate"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lastModifiedDate"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ishidden"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "contentLength"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "contentType"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "parentFolderLinkId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "syncServerTimeStamp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Document;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "creationDate"

    aput-object v1, v0, v5

    const-string v1, "isFolder"

    aput-object v1, v0, v6

    const-string v1, "ishidden"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contentLength"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contentType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "linkId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "parentFolderLinkId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Document;->LIST_PROJECTION:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Document;->ID_MAILBOX_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Document;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mFlagFolder:Z

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mFlagHidden:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mAttachments:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Document;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    return-void
.end method

.method public static restoreDocumentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Document;
    .locals 6

    const/4 v3, 0x0

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Document;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Document;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Document;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Document;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Document;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static restoreDocumentWithLinkId(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Document;
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Document;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Document;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "linkId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Document;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Document;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Document;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public addSaveOps(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Document;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mAttachments:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "messageKey"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Document;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mLinkId:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mDisplayName:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mFlagFolder:Z

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mTimeStamp:J

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mLastModTime:J

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mFlagHidden:Z

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mContentLength:J

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mContentType:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mMailboxKey:J

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mAccountKey:J

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mParentFolderLinkId:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .locals 12

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Document;->isSaved()Z

    move-result v10

    if-nez v10, :cond_0

    move v1, v8

    :cond_0
    iget-object v10, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mAttachments:Ljava/util/ArrayList;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_1
    if-eqz v1, :cond_3

    invoke-super {p0, p1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v7

    :cond_2
    :goto_0
    return-object v7

    :cond_3
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Document;->toContentValues()Landroid/content/ContentValues;

    move-result-object v10

    invoke-virtual {p0, p1, v10}, Lcom/android/emailcommon/provider/EmailContent$Document;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v10

    if-ne v10, v8, :cond_4

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Document;->getUri()Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    :cond_4
    move-object v7, v9

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/emailcommon/provider/EmailContent$Document;->addSaveOps(Ljava/util/ArrayList;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "com.android.email.provider"

    invoke-virtual {v8, v10, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    if-eqz v1, :cond_7

    const/4 v8, 0x0

    aget-object v8, v6, v8

    iget-object v7, v8, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mAttachments:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    const/4 v4, 0x2

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v4

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    add-int/lit8 v4, v5, 0x1

    aget-object v8, v6, v5

    iget-object v7, v8, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    :cond_6
    iget-wide v10, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v4

    goto :goto_1

    :cond_7
    move-object v7, v9

    goto :goto_0

    :catch_0
    move-exception v8

    :goto_2
    move-object v7, v9

    goto :goto_0

    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "linkId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mLinkId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "displayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isFolder"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mFlagFolder:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "creationDate"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "lastModifiedDate"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mLastModTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "ishidden"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mFlagHidden:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "contentLength"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mContentLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "contentType"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mailboxKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mMailboxKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "accountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "parentFolderLinkId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Document;->mParentFolderLinkId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
