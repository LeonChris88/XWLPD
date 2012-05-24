.class public Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;
.super Landroid/widget/CursorAdapter;
.source "ConvNameEditText.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ConvNameEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCompleteContactAdapter"
.end annotation


# static fields
.field public static final CONTENT_URI_AUTO_COMPLETE:Landroid/net/Uri;

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final PROJECTION_PHONE:[Ljava/lang/String;

.field public static final SELECTION:Ljava/lang/String;


# instance fields
.field private mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

.field private mContent:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "( %s = ? OR %s = ? )"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "mimetype"

    aput-object v2, v1, v3

    const-string v2, "mimetype"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->SELECTION:Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->CONTENT_URI_AUTO_COMPLETE:Landroid/net/Uri;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const-string v1, "data3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const-string v1, "data3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/AutoCompleteTextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mContent:Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mContent:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    return-void
.end method

.method private usefulAsDigits(Ljava/lang/CharSequence;)I
    .locals 7

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-string v5, "@%&/!?,\"\':;~=_<>{}[]|$\ufffd\ufffd\uff22\u0392\ufffd\uc5e1\uc9e0^\uc9f8\uca0c\uca54\uc9d5\uc9da\uc9ec\uca29\uc9e4\uc9f0"

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p1, v2, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    const/16 v6, 0x30

    if-lt v0, v6, :cond_1

    const/16 v6, 0x39

    if-gt v0, v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v6, 0x20

    if-eq v0, v6, :cond_0

    const/16 v6, 0x2d

    if-eq v0, v6, :cond_0

    const/16 v6, 0x28

    if-eq v0, v6, :cond_0

    const/16 v6, 0x29

    if-eq v0, v6, :cond_0

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_0

    const/16 v6, 0x2b

    if-eq v0, v6, :cond_0

    const/16 v6, 0x23

    if-eq v0, v6, :cond_0

    const/16 v6, 0x2a

    if-eq v0, v6, :cond_0

    const/16 v6, 0x41

    if-lt v0, v6, :cond_2

    const/16 v6, 0x5a

    if-le v0, v6, :cond_0

    :cond_2
    const/16 v6, 0x61

    if-lt v0, v6, :cond_3

    const/16 v6, 0x7a

    if-le v0, v6, :cond_0

    :cond_3
    const-string v6, "@%&/!?,\"\':;~=_<>{}[]|$\ufffd\ufffd\uff22\u0392\ufffd\uc5e1\uc9e0^\uc9f8\uca0c\uca54\uc9d5\uc9da\uc9ec\uca29\uc9e4\uc9f0"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v4, 0x1

    :cond_4
    return v4

    :cond_5
    const/4 v4, 0x2

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 14

    const-string v1, "display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v1, 0x2

    new-array v9, v1, [I

    invoke-static {v13}, Lcom/android/calendar/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "data4"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "data4"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_0
    invoke-virtual {p0, v8, v13, v9}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->findPos(Ljava/lang/String;Ljava/lang/String;[I)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f0f0017

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f0018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const-string v2, "sans"

    const/4 v3, 0x0

    const/16 v4, 0x10

    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/4 v2, 0x0

    aget v2, v9, v2

    const/4 v3, 0x1

    aget v3, v9, v3

    const/16 v4, 0x21

    invoke-interface {v12, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const v1, 0x7f0f0017

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f0018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v1, "data2"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const v1, 0x7f0f0019

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v10}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_2
    invoke-virtual {p0, v7, v13, v9}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->findPos(Ljava/lang/String;Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const-string v2, "sans"

    const/4 v3, 0x0

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/4 v2, 0x0

    aget v2, v9, v2

    const/4 v3, 0x1

    aget v3, v9, v3

    const/16 v4, 0x21

    invoke-interface {v12, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const v1, 0x7f0f0017

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f0018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const v1, 0x7f0f0017

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f0018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findPos(Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/android/calendar/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2}, Lcom/android/calendar/Utils;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v5, "\\"

    const-string v6, "\\\\"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v5, "*"

    const-string v6, ".*"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v5, "?"

    const-string v6, ".?"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v5, "+"

    const-string v6, ".+"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v5, "("

    const-string v6, "\\("

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v5, ")"

    const-string v6, "\\)"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v5, "["

    const-string v6, "\\["

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v5, "{"

    const-string v6, "\\{"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v5, "}"

    const-string v6, "\\}"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    aput v5, p3, v4

    aget v4, p3, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, p3, v3

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v0, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mCursor:Landroid/database/Cursor;

    const-string v2, "display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v0, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mCursor:Landroid/database/Cursor;

    const-string v2, "data1"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v0, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mCursor:Landroid/database/Cursor;

    const-string v2, "data2"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03000b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    return-object v1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 20

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/calendar/ConvNameEditText;->allowQuery()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/16 v16, 0x0

    :cond_1
    :goto_0
    return-object v16

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v16, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v16

    goto :goto_0

    :cond_4
    const-string v15, ""

    const-string v13, ""

    const/4 v6, 0x0

    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->usefulAsDigits(Ljava/lang/CharSequence;)I

    move-result v18

    if-nez v18, :cond_8

    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v15, ""

    :cond_5
    :goto_2
    const/16 v16, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    const-string v2, "( %s GLOB ? OR UPPER(%s) GLOB ? OR LOWER(%s) GLOB ? OR UPPER(%s) GLOB ? ) AND %s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "display_name"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "display_name"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string v8, "display_name"

    aput-object v8, v4, v7

    const/4 v7, 0x3

    const-string v8, "data1"

    aput-object v8, v4, v7

    const/4 v7, 0x4

    sget-object v8, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->SELECTION:Ljava/lang/String;

    aput-object v8, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x6

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x4

    const-string v4, "vnd.android.cursor.item/phone_v2"

    aput-object v4, v6, v2

    const/4 v2, 0x5

    const-string v4, "vnd.android.cursor.item/email_v2"

    aput-object v4, v6, v2

    if-nez p1, :cond_9

    const-string v14, ""

    :goto_3
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mContent:Landroid/content/ContentResolver;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    sget-object v4, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->PROJECTION:[Ljava/lang/String;

    :goto_4
    const-string v7, "display_name, is_primary DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    :goto_5
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "\u00a0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v19, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    new-instance v2, Landroid/database/MergeCursor;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v7, 0x0

    aput-object v19, v4, v7

    const/4 v7, 0x1

    aput-object v16, v4, v7

    invoke-direct {v2, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object/from16 v16, v2

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    :cond_8
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_5

    move-object v15, v13

    goto/16 :goto_2

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_3

    :cond_a
    sget-object v4, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    goto :goto_4

    :cond_b
    const-string v2, "( UPPER(%s) GLOB ? ) AND %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "data4"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->SELECTION:Ljava/lang/String;

    aput-object v8, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x1

    const-string v4, "vnd.android.cursor.item/phone_v2"

    aput-object v4, v6, v2

    const/4 v2, 0x2

    const-string v4, "vnd.android.cursor.item/email_v2"

    aput-object v4, v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mContent:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->CONTENT_URI_AUTO_COMPLETE:Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    sget-object v9, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->PROJECTION:[Ljava/lang/String;

    :goto_6
    const-string v12, "display_name, is_primary DESC"

    move-object v10, v5

    move-object v11, v6

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    goto/16 :goto_5

    :cond_c
    sget-object v9, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    goto :goto_6
.end method
