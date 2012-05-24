.class public Lcom/android/email/activity/ContactPreviewPopup;
.super Landroid/app/Activity;
.source "ContactPreviewPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private addrList:[Lcom/android/emailcommon/mail/Address;

.field private btnCompose:Landroid/widget/Button;

.field private btnContact:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private leftSpinImg:Landroid/widget/ImageView;

.field private lookupUri:Landroid/net/Uri;

.field private mAccountAddr:Ljava/lang/String;

.field private mAccountId:J

.field private mCc:Ljava/lang/String;

.field private mCclength:I

.field private mContactEntry:Lcom/android/email/ContactInfoCache$CacheEntry;

.field private mFrom:Ljava/lang/String;

.field private mImage:Landroid/widget/ImageView;

.field private mIndex:I

.field private mMessageId:J

.field private mPhoneNumber:Ljava/lang/String;

.field private mTo:Ljava/lang/String;

.field private mTolength:I

.field private mTotalLen:I

.field private mType:I

.field private nametext:Landroid/widget/TextView;

.field private noMoreLeft:Z

.field private noMoreRight:Z

.field private personEmail:Lcom/android/emailcommon/mail/Address;

.field private rightSpinImg:Landroid/widget/ImageView;

.field private text2:Landroid/widget/TextView;

.field private text3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mFrom:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTo:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mCc:Ljava/lang/String;

    iput v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTolength:I

    iput v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mCclength:I

    iput v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    iput v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mType:I

    iput-wide v3, p0, Lcom/android/email/activity/ContactPreviewPopup;->mMessageId:J

    iput-wide v3, p0, Lcom/android/email/activity/ContactPreviewPopup;->mAccountId:J

    iput v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTotalLen:I

    iput-object v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->mContactEntry:Lcom/android/email/ContactInfoCache$CacheEntry;

    iput-object v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/ContactPreviewPopup;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnCompose:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/ContactPreviewPopup;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;

    return-object v0
.end method

.method private showContactStatusChangingLocale()V
    .locals 2

    const v0, 0x7f0805bb

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    return-void
.end method


# virtual methods
.method public UpdateContactInfo(Lcom/android/emailcommon/mail/Address;)V
    .locals 12

    const/4 v7, 0x4

    const/4 v11, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/email/ContactInfoCache;->getInstance()Lcom/android/email/ContactInfoCache;

    move-result-object v1

    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/email/ContactInfoCache;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/email/ContactInfoCache;->getInstance()Lcom/android/email/ContactInfoCache;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->mAccountAddr:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->mAccountAddr:Ljava/lang/String;

    invoke-virtual {v1, v6, v11}, Lcom/android/email/ContactInfoCache;->getContactInfoForEmailAddress(Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;

    move-result-object v2

    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->nametext:Landroid/widget/TextView;

    iget-object v9, v2, Lcom/android/email/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->text2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->text3:Landroid/widget/TextView;

    iget-object v9, v2, Lcom/android/email/ContactInfoCache$CacheEntry;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->mAccountAddr:Ljava/lang/String;

    invoke-virtual {v1, v6, v11}, Lcom/android/email/ContactInfoCache;->getContactInfo(Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v6, v4, Lcom/android/email/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->mImage:Landroid/widget/ImageView;

    iget-object v9, v4, Lcom/android/email/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v9, p0, Lcom/android/email/activity/ContactPreviewPopup;->leftSpinImg:Landroid/widget/ImageView;

    iget-boolean v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    if-eqz v6, :cond_3

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->rightSpinImg:Landroid/widget/ImageView;

    iget-boolean v9, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    if-eqz v9, :cond_4

    :goto_3
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;

    const v7, 0x7f0802cb

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    :goto_4
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v9, p0, Lcom/android/email/activity/ContactPreviewPopup;->nametext:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->mAccountAddr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, ""

    :goto_5
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->text2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_2
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->mImage:Landroid/widget/ImageView;

    const v9, 0x7f020115

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    move v6, v8

    goto :goto_2

    :cond_4
    move v7, v8

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;

    const v7, 0x7f0802cc

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    goto :goto_4
.end method

.method public getContactProviderStatus()I
    .locals 8

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v5

    const/4 v4, 0x1

    const-string v5, "data1"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public onAddToContact(Lcom/android/emailcommon/mail/Address;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v3, "email"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v3, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ContactPreviewPopup;->startActivity(Landroid/content/Intent;)V

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/ContactPreviewPopup;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->finish()V

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    const v0, 0x1030059

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->getContactProviderStatus()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/email/activity/ContactPreviewPopup;->showContactStatusChangingLocale()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mType:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->addrList:[Lcom/android/emailcommon/mail/Address;

    iget v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    iput-boolean v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    iput-boolean v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    iget v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    :cond_2
    iget v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    iget v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTotalLen:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    iput-boolean v4, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ContactPreviewPopup;->UpdateContactInfo(Lcom/android/emailcommon/mail/Address;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->getContactProviderStatus()I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/android/email/activity/ContactPreviewPopup;->showContactStatusChangingLocale()V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mType:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->addrList:[Lcom/android/emailcommon/mail/Address;

    iget v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    iput-boolean v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    iput-boolean v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    iget v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    if-nez v0, :cond_5

    iput-boolean v4, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    :cond_5
    iget v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    iget v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTotalLen:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_6

    iput-boolean v4, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ContactPreviewPopup;->UpdateContactInfo(Lcom/android/emailcommon/mail/Address;)V

    goto :goto_0

    :pswitch_3
    new-array v0, v4, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->context:Landroid/content/Context;

    const-class v3, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.android.email.activity._ACCOUNT_ID"

    iget-wide v3, p0, Lcom/android/email/activity/ContactPreviewPopup;->mAccountId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ContactPreviewPopup;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->finish()V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Lcom/android/emailcommon/mail/Address;

    iget-object v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ContactPreviewPopup;->startActivity(Landroid/content/Intent;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ContactPreviewPopup;->setResult(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->finish()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/email/activity/ContactPreviewPopup;->onAddToContact(Lcom/android/emailcommon/mail/Address;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1000f7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v13, 0x3

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v12, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x3f00

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const v8, 0x10a0005

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v8, 0x7f04004f

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v8, "changing_locale_for_contact"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->getContactProviderStatus()I

    move-result v8

    if-ne v8, v13, :cond_1

    if-ne v4, v12, :cond_1

    invoke-direct {p0}, Lcom/android/email/activity/ContactPreviewPopup;->showContactStatusChangingLocale()V

    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "type"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mType:I

    const-string v8, "index"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    const-string v8, "from"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mFrom:Ljava/lang/String;

    const-string v8, "to"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTo:Ljava/lang/String;

    const-string v8, "cc"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mCc:Ljava/lang/String;

    const-string v8, "to_len"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTolength:I

    const-string v8, "cc_len"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mCclength:I

    const v8, 0x7f1000f7

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->leftSpinImg:Landroid/widget/ImageView;

    const v8, 0x7f1000f9

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->rightSpinImg:Landroid/widget/ImageView;

    new-instance v8, Lcom/android/emailcommon/mail/Address;

    const-string v10, ""

    invoke-direct {v8, v10}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    iput-boolean v9, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    iput-boolean v9, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mType:I

    if-ne v8, v12, :cond_5

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mFrom:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    if-eqz v8, :cond_0

    const v8, 0x7f1000f8

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f1000fb

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->nametext:Landroid/widget/TextView;

    const v8, 0x7f1000fc

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->text2:Landroid/widget/TextView;

    const v8, 0x7f1000fd

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->text3:Landroid/widget/TextView;

    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mType:I

    if-ne v8, v12, :cond_9

    const v8, 0x7f0801cd

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mType:I

    if-ne v8, v12, :cond_3

    iput-boolean v12, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    iput-boolean v12, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    :cond_3
    iget-object v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->leftSpinImg:Landroid/widget/ImageView;

    iget-boolean v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    if-eqz v8, :cond_a

    const/4 v8, 0x4

    :goto_3
    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->rightSpinImg:Landroid/widget/ImageView;

    iget-boolean v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    if-eqz v8, :cond_b

    const/4 v8, 0x4

    :goto_4
    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mAccountAddr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->getContactProviderStatus()I

    move-result v8

    if-ne v8, v13, :cond_c

    if-eqz p1, :cond_4

    const-string v8, "com.android.email.activity.LOOKUP_URI"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    const-string v8, "com.android.email.activity.CONTACT_ENTRY"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/android/email/ContactInfoCache$CacheEntry;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mContactEntry:Lcom/android/email/ContactInfoCache$CacheEntry;

    const-string v8, "com.android.email.activity.PHONE_NUMBER"

    const/4 v10, 0x0

    invoke-virtual {p1, v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mPhoneNumber:Ljava/lang/String;

    :cond_4
    :goto_5
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->nametext:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->mContactEntry:Lcom/android/email/ContactInfoCache$CacheEntry;

    iget-object v10, v10, Lcom/android/email/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->text2:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v10}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->text3:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    const v8, 0x7f1000fa

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mContactEntry:Lcom/android/email/ContactInfoCache$CacheEntry;

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mContactEntry:Lcom/android/email/ContactInfoCache$CacheEntry;

    iget-object v8, v8, Lcom/android/email/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mImage:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->mContactEntry:Lcom/android/email/ContactInfoCache$CacheEntry;

    iget-object v10, v10, Lcom/android/email/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    if-nez v8, :cond_10

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    :goto_8
    const v8, 0x7f1000fe

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;

    const v8, 0x7f1000ff

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnCompose:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;

    const v10, 0x7f0802cc

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(I)V

    :goto_9
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnCompose:Landroid/widget/Button;

    const v10, 0x7f08026d

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(I)V

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->leftSpinImg:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->rightSpinImg:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnCompose:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcom/android/email/activity/ContactPreviewPopup$1;

    invoke-direct {v8, p0}, Lcom/android/email/activity/ContactPreviewPopup$1;-><init>(Lcom/android/email/activity/ContactPreviewPopup;)V

    new-array v9, v9, [Ljava/lang/Void;

    invoke-virtual {v8, v9}, Lcom/android/email/activity/ContactPreviewPopup$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_5
    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mType:I

    if-ne v8, v11, :cond_7

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTo:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->addrList:[Lcom/android/emailcommon/mail/Address;

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->addrList:[Lcom/android/emailcommon/mail/Address;

    iget v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    aget-object v8, v8, v10

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTolength:I

    iput v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTotalLen:I

    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    if-nez v8, :cond_6

    iput-boolean v12, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    :cond_6
    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    iget v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTotalLen:I

    add-int/lit8 v10, v10, -0x1

    if-ne v8, v10, :cond_2

    iput-boolean v12, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    goto/16 :goto_1

    :cond_7
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mCc:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->addrList:[Lcom/android/emailcommon/mail/Address;

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->addrList:[Lcom/android/emailcommon/mail/Address;

    iget v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    aget-object v8, v8, v10

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mCclength:I

    iput v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTotalLen:I

    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    if-nez v8, :cond_8

    iput-boolean v12, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    :cond_8
    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    iget v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTotalLen:I

    add-int/lit8 v10, v10, -0x1

    if-ne v8, v10, :cond_2

    iput-boolean v12, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    goto/16 :goto_1

    :cond_9
    const v8, 0x7f0802ca

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_a
    move v8, v9

    goto/16 :goto_3

    :cond_b
    move v8, v9

    goto/16 :goto_4

    :cond_c
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    sget-object v8, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    new-instance v1, Lcom/android/email/ContactInfoCache;

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->context:Landroid/content/Context;

    invoke-direct {v1, v8}, Lcom/android/email/ContactInfoCache;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mAccountAddr:Ljava/lang/String;

    invoke-virtual {v1, v8, v12}, Lcom/android/email/ContactInfoCache;->getContactInfoForEmailAddress(Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mContactEntry:Lcom/android/email/ContactInfoCache$CacheEntry;

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/email/ContactInfoCache;->queryContactInfoByEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mPhoneNumber:Ljava/lang/String;

    goto/16 :goto_5

    :cond_d
    iget-object v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->nametext:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mAccountAddr:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v8, ""

    :goto_a
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->text2:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v10}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_e
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    :cond_f
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mImage:Landroid/widget/ImageView;

    const v10, 0x7f020115

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_10
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    goto/16 :goto_8

    :cond_11
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;

    const v10, 0x7f0802cb

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_9
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "com.android.email.activity.LOOKUP_URI"

    iget-object v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "com.android.email.activity.CONTACT_ENTRY"

    iget-object v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mContactEntry:Lcom/android/email/ContactInfoCache$CacheEntry;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "com.android.email.activity.PHONE_NUMBER"

    iget-object v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
