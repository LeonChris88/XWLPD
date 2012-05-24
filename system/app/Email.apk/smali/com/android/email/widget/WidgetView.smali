.class Lcom/android/email/widget/WidgetView;
.super Ljava/lang/Object;
.source "WidgetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/widget/WidgetView$1;,
        Lcom/android/email/widget/WidgetView$ViewType;
    }
.end annotation


# static fields
.field static final ALL_INBOX:Lcom/android/email/widget/WidgetView;

.field private static final ID_NAME_PROJECTION:[Ljava/lang/String;

.field public static final UNINITIALIZED_VIEW:Lcom/android/email/widget/WidgetView;


# instance fields
.field private final mAccountId:J

.field private final mAccountName:Ljava/lang/String;

.field private final mViewType:Lcom/android/email/widget/WidgetView$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/widget/WidgetView;->ID_NAME_PROJECTION:[Ljava/lang/String;

    new-instance v0, Lcom/android/email/widget/WidgetView;

    sget-object v1, Lcom/android/email/widget/WidgetView$ViewType;->TYPE_ALL_INBOX:Lcom/android/email/widget/WidgetView$ViewType;

    invoke-direct {v0, v1}, Lcom/android/email/widget/WidgetView;-><init>(Lcom/android/email/widget/WidgetView$ViewType;)V

    sput-object v0, Lcom/android/email/widget/WidgetView;->ALL_INBOX:Lcom/android/email/widget/WidgetView;

    sget-object v0, Lcom/android/email/widget/WidgetView;->ALL_INBOX:Lcom/android/email/widget/WidgetView;

    sput-object v0, Lcom/android/email/widget/WidgetView;->UNINITIALIZED_VIEW:Lcom/android/email/widget/WidgetView;

    return-void
.end method

.method private constructor <init>(Lcom/android/email/widget/WidgetView$ViewType;)V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/email/widget/WidgetView;-><init>(Lcom/android/email/widget/WidgetView$ViewType;JLjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/email/widget/WidgetView$ViewType;JLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/email/widget/WidgetView;->mViewType:Lcom/android/email/widget/WidgetView$ViewType;

    iput-wide p2, p0, Lcom/android/email/widget/WidgetView;->mAccountId:J

    iput-object p4, p0, Lcom/android/email/widget/WidgetView;->mAccountName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccountId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/widget/WidgetView;->mAccountId:J

    return-wide v0
.end method

.method public getNext(Landroid/content/Context;)Lcom/android/email/widget/WidgetView;
    .locals 10

    const/4 v4, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/email/widget/WidgetView;->mViewType:Lcom/android/email/widget/WidgetView$ViewType;

    sget-object v1, Lcom/android/email/widget/WidgetView$ViewType;->TYPE_ALL_INBOX:Lcom/android/email/widget/WidgetView$ViewType;

    if-ne v0, v1, :cond_0

    const-wide/16 v7, -0x1

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/widget/WidgetView;->ID_NAME_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id>=? and displayName is not \'##snc##\'"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/email/widget/WidgetView;

    sget-object v1, Lcom/android/email/widget/WidgetView$ViewType;->TYPE_ACCOUNT_INBOX:Lcom/android/email/widget/WidgetView$ViewType;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/widget/WidgetView;-><init>(Lcom/android/email/widget/WidgetView$ViewType;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/android/email/widget/WidgetView;->mAccountId:J

    const-wide/16 v2, 0x1

    add-long v7, v0, v2

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/email/widget/WidgetView;->ALL_INBOX:Lcom/android/email/widget/WidgetView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/widget/WidgetView;->mViewType:Lcom/android/email/widget/WidgetView$ViewType;

    invoke-virtual {v0}, Lcom/android/email/widget/WidgetView$ViewType;->getSelection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/email/widget/WidgetView;->mViewType:Lcom/android/email/widget/WidgetView$ViewType;

    iget-wide v1, p0, Lcom/android/email/widget/WidgetView;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/widget/WidgetView$ViewType;->getSelectionArgs(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/email/widget/WidgetView;->mViewType:Lcom/android/email/widget/WidgetView$ViewType;

    iget-object v1, p0, Lcom/android/email/widget/WidgetView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/email/widget/WidgetView$ViewType;->getTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadCount(Landroid/content/Context;)I
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/widget/WidgetView;->getSelection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flagRead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/email/widget/WidgetView;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public isPerAccount()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/widget/WidgetView;->mViewType:Lcom/android/email/widget/WidgetView$ViewType;

    invoke-static {v0}, Lcom/android/email/widget/WidgetView$ViewType;->access$100(Lcom/android/email/widget/WidgetView$ViewType;)Z

    move-result v0

    return v0
.end method

.method public isValid(Landroid/content/Context;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/android/email/widget/WidgetView$1;->$SwitchMap$com$android$email$widget$WidgetView$ViewType:[I

    iget-object v2, p0, Lcom/android/email/widget/WidgetView;->mViewType:Lcom/android/email/widget/WidgetView$ViewType;

    invoke-virtual {v2}, Lcom/android/email/widget/WidgetView$ViewType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v8

    :pswitch_0
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    if-lez v0, :cond_1

    move v6, v8

    :cond_1
    move v8, v6

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/email/widget/WidgetView;->mAccountId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    move v8, v6

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WidgetView:type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/widget/WidgetView;->mViewType:Lcom/android/email/widget/WidgetView$ViewType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/email/widget/WidgetView;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public useUnreadCount()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/widget/WidgetView;->mViewType:Lcom/android/email/widget/WidgetView$ViewType;

    invoke-static {v0}, Lcom/android/email/widget/WidgetView$ViewType;->access$200(Lcom/android/email/widget/WidgetView$ViewType;)Z

    move-result v0

    return v0
.end method
