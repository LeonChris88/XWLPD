.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->items:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26

    move-object/from16 v24, p2

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/LayoutInflater;

    const v2, 0x7f040055

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    :cond_0
    const v2, 0x7f0d0129

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->items:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    const/16 v20, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getPhotoID()I

    move-result v2

    if-eqz v2, :cond_2

    new-instance v19, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getPhotoID()I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v19

    invoke-static {v2, v4, v5, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v20

    if-eqz v20, :cond_1

    const v2, 0x7f0d0127

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    return-object v24

    :cond_1
    const v2, 0x7f0d0127

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f020107

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const v2, 0x7f0d0127

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f020107

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_0
    const v2, 0x7f0d0129

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const v2, 0x7f0d012a

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const v2, 0x7f0d012b

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0d012c

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0d012e

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0d012f

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0d0130

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    const v2, 0x7f0d012a

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0a0284

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f0d0129

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "iw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v17, Landroid/text/SpannableString;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    const/16 v5, 0x12

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v2, v4, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v2, 0x7f0d012a

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v13

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-virtual {v2, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "/data"

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1500()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "mimetype"

    const-string v6, "=\'"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "data1"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "is_super_primary"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "data1"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    const v2, 0x7f0d012e

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0d012f

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0d0130

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getActionCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    add-int v12, v21, v18

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    if-ltz v21, :cond_9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v21

    if-lt v2, v0, :cond_9

    const v2, 0x7f0d012a

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    if-ltz v21, :cond_a

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v12, :cond_a

    move/from16 v0, v21

    if-gt v0, v12, :cond_a

    const v2, 0x7f0d012b

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move/from16 v0, v21

    invoke-virtual {v11, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    if-ltz v12, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v12, :cond_4

    const v2, 0x7f0d012c

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_2
    const v2, 0x7f0d0129

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    const v2, 0x7f0d012a

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const v2, 0x7f0d012b

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0d012c

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ltz v22, :cond_c

    move/from16 v0, v22

    if-gt v0, v15, :cond_c

    const v2, 0x7f0d012e

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0d012f

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0d0130

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    add-int v4, v18, v22

    invoke-virtual {v14, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    const v2, 0x7f0d012a

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0a0284

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_c
    const v2, 0x7f0d012e

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_3
    const v2, 0x7f0d0129

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-ltz v22, :cond_d

    move/from16 v0, v22

    if-gt v0, v15, :cond_d

    const v2, 0x7f0d012e

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0d012f

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0d0130

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    add-int v4, v18, v22

    invoke-virtual {v14, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_d
    const v2, 0x7f0d012e

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
