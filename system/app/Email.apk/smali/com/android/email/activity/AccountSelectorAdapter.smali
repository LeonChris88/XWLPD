.class public Lcom/android/email/activity/AccountSelectorAdapter;
.super Landroid/widget/CursorAdapter;
.source "AccountSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;

.field public static final COLOR_CHIP_RES_IDS:[I

.field private static final RESULT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCountMargin:I

.field private mDropDownMargin:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private sDropdownAccountAddressTextColor:I

.field private sDropdownAccountNameTextColor:I

.field private sDropdownCountTextColor:I

.field private sDropdownSelectedTextColor:I

.field private sMailboxName:Ljava/lang/String;

.field private sUnreadCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "emailAddress"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->COLOR_CHIP_RES_IDS:[I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "emailAddress"

    aput-object v1, v0, v4

    const-string v1, "UNREAD_COUNT"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->RESULT_PROJECTION:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 0x4
        0xd3t 0x0t 0x2t 0x7ft
        0xd4t 0x0t 0x2t 0x7ft
        0xd5t 0x0t 0x2t 0x7ft
        0xd6t 0x0t 0x2t 0x7ft
        0xd7t 0x0t 0x2t 0x7ft
        0xd8t 0x0t 0x2t 0x7ft
        0xd9t 0x0t 0x2t 0x7ft
        0xdat 0x0t 0x2t 0x7ft
        0xdbt 0x0t 0x2t 0x7ft
        0xdct 0x0t 0x2t 0x7ft
        0xddt 0x0t 0x2t 0x7ft
        0xdet 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xe0t 0x0t 0x2t 0x7ft
        0xe1t 0x0t 0x2t 0x7ft
        0xe2t 0x0t 0x2t 0x7ft
        0xe3t 0x0t 0x2t 0x7ft
        0xe4t 0x0t 0x2t 0x7ft
        0xe5t 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput v2, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownSelectedTextColor:I

    iput v2, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownAccountNameTextColor:I

    iput v2, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownAccountAddressTextColor:I

    iput v2, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownCountTextColor:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sMailboxName:Ljava/lang/String;

    iput v1, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sUnreadCount:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mCountMargin:I

    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mDropDownMargin:I

    iget v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownSelectedTextColor:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownSelectedTextColor:I

    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownAccountNameTextColor:I

    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownAccountAddressTextColor:I

    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownCountTextColor:I

    :cond_0
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/email/activity/AccountSelectorAdapter;->RESULT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static createLoader(Landroid/content/Context;)Landroid/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;

    invoke-direct {v0, p0}, Lcom/android/email/activity/AccountSelectorAdapter$AccountsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getAccountDisplayName(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/email/activity/AccountSelectorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAccountDisplayName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAccountEmailAddress(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/email/activity/AccountSelectorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountEmailAddress(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAccountEmailAddress(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAccountId(Landroid/database/Cursor;)J
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getAccountUnreadCount(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/email/activity/AccountSelectorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountUnreadCount(Landroid/database/Cursor;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAccountUnreadCount(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5

    const v1, 0x7f100010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getCurrentAccountId()J

    move-result-wide v1

    const-wide/high16 v3, 0x1000

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sUnreadCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sMailboxName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sMailboxName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sMailboxName:Ljava/lang/String;

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sMailboxName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sUnreadCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getAccountId(I)Ljava/lang/Long;
    .locals 3

    invoke-virtual {p0}, Lcom/android/email/activity/AccountSelectorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(Landroid/database/Cursor;)J

    move-result-wide v1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23

    const/16 v18, 0x0

    if-nez p1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f040005

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    const v19, 0x7f100019

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v19, 0x7f100017

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v19, 0x7f100018

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    const v19, 0x7f100012

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountUnreadCount(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountUnreadCount(I)I

    move-result v19

    if-lez v19, :cond_0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getCurrentAccountId()J

    move-result-wide v19

    const-wide/high16 v21, 0x1000

    cmp-long v19, v19, v21

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020004

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v14}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020004

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    return-object v18

    :cond_0
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownAccountNameTextColor:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v14}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownAccountNameTextColor:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f040004

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    const v19, 0x7f100001

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v19, 0x7f100010

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v19, 0x7f100014

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v19, 0x7f100013

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v19, 0x7f100015

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v19, 0x7f100012

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    const v19, 0x7f100011

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    invoke-direct/range {p0 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountUnreadCount(I)I

    move-result v19

    if-lez v19, :cond_5

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(I)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sget-object v21, Lcom/android/email/activity/AccountSelectorAdapter;->COLOR_CHIP_RES_IDS:[I

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    rem-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v5, v0

    sget-object v19, Lcom/android/email/activity/AccountSelectorAdapter;->COLOR_CHIP_RES_IDS:[I

    aget v19, v19, v5

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {p0 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountDisplayName(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {p0 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountEmailAddress(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v12, :cond_6

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    const-string v12, " "

    :cond_3
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountUnreadCount(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(I)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    const v19, 0x7f100016

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(I)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getCurrentAccountId()J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020004

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020004

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020004

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v11}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v13}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_1

    :cond_5
    const/16 v19, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownAccountNameTextColor:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownAccountAddressTextColor:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/AccountSelectorAdapter;->sDropdownCountTextColor:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v11}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v13}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setMailboxName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sMailboxName:Ljava/lang/String;

    return-void
.end method

.method public setUnreadCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/email/activity/AccountSelectorAdapter;->sUnreadCount:I

    return-void
.end method
