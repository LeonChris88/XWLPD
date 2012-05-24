.class public final Lcom/android/emailcommon/provider/EmailContent$HostAuth;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/EmailContent$HostAuthColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HostAuth"
.end annotation


# static fields
.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$HostAuth;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mDomain:Ljava/lang/String;

.field public mFlags:I

.field public mLogin:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field public mPort:I

.field public mProtocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/hostauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "login"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "domain"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    return-void
.end method

.method public static getSchemeFlags(Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x2

    const-string v4, "\\+"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    array-length v4, v3

    if-lt v4, v6, :cond_1

    const/4 v4, 0x1

    aget-object v1, v3, v4

    const-string v4, "ssl"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_0
    array-length v4, v3

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    aget-object v2, v3, v6

    const-string v4, "trustallcerts"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v0, v0, 0x8

    :cond_1
    return v0

    :cond_2
    const-string v4, "tls"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static getSchemeString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    and-int/lit8 v1, p1, 0xb

    sparse-switch v1, :sswitch_data_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_0
    const-string v0, "+ssl+"

    goto :goto_0

    :sswitch_1
    const-string v0, "+ssl+trustallcerts"

    goto :goto_0

    :sswitch_2
    const-string v0, "+tls+"

    goto :goto_0

    :sswitch_3
    const-string v0, "+tls+trustallcerts"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method public static restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .locals 7

    const/4 v6, 0x0

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_2

    :try_start_1
    const-string v0, "EmailContent >>"

    const-string v2, "restoreHostAuthWithId : null cursor"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v6

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_3
    const-string v2, "EmailContent >>"

    const-string v3, "RuntimeException in restoreHostAuthWithId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getStoreUri()Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    const/4 v2, 0x0

    iget v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    :goto_0
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    iget v6, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    invoke-static {v4, v6}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getSchemeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget v4, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    :goto_4
    return-object v11

    :cond_1
    const-string v10, ""

    goto :goto_0

    :cond_2
    const-string v9, ""

    goto :goto_1

    :cond_3
    move-object v3, v11

    goto :goto_2

    :cond_4
    move-object v5, v11

    goto :goto_3

    :catch_0
    move-exception v8

    goto :goto_4
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 2

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    return-void
.end method

.method public setConnection(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const-string v3, "\\+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    invoke-static {p1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getSchemeFlags(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public setConnection(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, -0xc

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v2, p4, 0xb

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    iput-object p2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput p3, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "pop3"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    const/16 v1, 0x3e3

    :goto_1
    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x6e

    goto :goto_1

    :cond_3
    const-string v1, "imap"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    const/16 v1, 0x3e1

    :goto_3
    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    goto :goto_2

    :cond_4
    const/16 v1, 0x8f

    goto :goto_3

    :cond_5
    const-string v1, "eas"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    const/16 v1, 0x1bb

    :goto_4
    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    goto :goto_2

    :cond_6
    const/16 v1, 0x50

    goto :goto_4

    :cond_7
    const-string v1, "smtp"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_8

    const/16 v1, 0x1d1

    :goto_5
    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    goto :goto_2

    :cond_8
    const/16 v1, 0x24b

    goto :goto_5
.end method

.method public setLogin(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ":"

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v1, v0, v3

    array-length v3, v0

    if-le v3, v5, :cond_0

    aget-object v2, v0, v5

    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    goto :goto_0
.end method

.method public setStoreUri(Ljava/lang/String;)V
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iget v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v8, v8, -0x5

    iput v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, ":"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v8, v6, v8

    iput-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iget v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    array-length v8, v6

    if-le v8, v11, :cond_0

    const/4 v8, 0x1

    aget-object v8, v6, v8

    iput-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    :cond_0
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v8, v2

    if-lt v8, v11, :cond_1

    const/4 v7, 0x0

    aget-object v7, v2, v7

    :cond_1
    iput-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    iget v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v7, v7, -0xc

    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    const/4 v3, 0x0

    array-length v7, v2

    if-lt v7, v12, :cond_3

    const/4 v7, 0x1

    aget-object v0, v2, v7

    const-string v7, "ssl"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v3, 0x1

    iget v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    :cond_2
    :goto_0
    array-length v7, v2

    const/4 v8, 0x3

    if-lt v7, v8, :cond_3

    const/4 v7, 0x2

    aget-object v1, v2, v7

    const-string v7, "trustallcerts"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    :cond_3
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v7

    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    iget v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    const-string v7, "pop3"

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v3, :cond_7

    const/16 v7, 0x3e3

    :goto_1
    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    :cond_4
    :goto_2
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    :cond_5
    return-void

    :cond_6
    const-string v7, "tls"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v5}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_7
    const/16 v7, 0x6e

    goto :goto_1

    :cond_8
    :try_start_1
    const-string v7, "imap"

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v3, :cond_9

    const/16 v7, 0x3e1

    :goto_3
    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    goto :goto_2

    :cond_9
    const/16 v7, 0x8f

    goto :goto_3

    :cond_a
    const-string v7, "eas"

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v3, :cond_b

    const/16 v7, 0x1bb

    :goto_4
    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    goto :goto_2

    :cond_b
    const/16 v7, 0x50

    goto :goto_4

    :cond_c
    const-string v7, "smtp"

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v3, :cond_d

    const/16 v7, 0x1d1

    :goto_5
    iput v7, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_d
    const/16 v7, 0x24b

    goto :goto_5
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "protocol"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "address"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "port"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "login"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "password"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "domain"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "accountKey"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getStoreUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
