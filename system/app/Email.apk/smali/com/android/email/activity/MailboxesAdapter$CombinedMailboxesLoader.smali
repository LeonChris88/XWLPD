.class Lcom/android/email/activity/MailboxesAdapter$CombinedMailboxesLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "MailboxesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CombinedMailboxesLoader"
.end annotation


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "accountType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MailboxesAdapter$CombinedMailboxesLoader;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v5, 0x0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/activity/MailboxesAdapter$CombinedMailboxesLoader;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string v4, "displayName is not \'##snc##\'"

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/email/activity/MailboxesAdapter$CombinedMailboxesLoader;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 3

    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/MailboxesAdapter$CombinedMailboxesLoader;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/email/activity/MailboxesAdapter;->getSpecialMailboxesCursor(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->get(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/activity/MailboxesAdapter;->access$602(Landroid/database/Cursor;)Landroid/database/Cursor;

    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$600()Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxesAdapter$CombinedMailboxesLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
