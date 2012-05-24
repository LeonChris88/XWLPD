.class public Lcom/android/calendar/AgendaAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AgendaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AgendaAdapter$ViewHolder;
    }
.end annotation


# static fields
.field static final CALENDARS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field public mImageLoader:Lcom/android/calendar/ImageLoader;

.field private mNoTitleLabel:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/AgendaAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object p1, p0, Lcom/android/calendar/AgendaAdapter;->mContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/calendar/AgendaAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/calendar/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AgendaAdapter;->mNoTitleLabel:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/AgendaAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/calendar/ImageLoader;

    invoke-direct {v0, p1}, Lcom/android/calendar/ImageLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaAdapter;->mImageLoader:Lcom/android/calendar/ImageLoader;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 40

    const/16 v28, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    instance-of v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    :cond_0
    if-nez v28, :cond_1

    new-instance v28, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    invoke-direct/range {v28 .. v28}, Lcom/android/calendar/AgendaAdapter$ViewHolder;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v2, 0x7f0f0013

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v2, 0x7f0f0099

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    const v2, 0x7f0f0015

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->calendar:Landroid/view/View;

    const v2, 0x7f0f0096

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    const v2, 0x7f0f001b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    const v2, 0x7f0f0095

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photoContainer:Landroid/view/View;

    :cond_1
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v36, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v39, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->calendar:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v36, :cond_2

    if-eqz v39, :cond_2

    if-nez v16, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v2, "contact_data_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const-string v2, "contact_account_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v2, "facebook_schedule_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_4

    if-eqz v18, :cond_d

    const-string v2, "com.sec.android.app.snsaccountfacebook.account_type"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_4
    const/16 v29, 0x1

    :goto_1
    const/4 v2, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-nez v17, :cond_5

    const v17, -0x222223

    :cond_5
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_7

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v37, v0

    :cond_8
    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_e

    const/4 v15, 0x1

    :goto_2
    if-eqz v15, :cond_f

    const/16 v2, 0x8

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    const/16 v27, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    if-lez v19, :cond_13

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v19

    int-to-long v9, v0

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter;->mImageLoader:Lcom/android/calendar/ImageLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AgendaAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v28

    iget-object v9, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, v28

    iget-object v10, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photoContainer:Landroid/view/View;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0, v3, v9, v10}, Lcom/android/calendar/ImageLoader;->DisplayImage(Landroid/net/Uri;Landroid/app/Activity;Landroid/widget/ImageView;Landroid/view/View;)Z

    move-result v27

    :cond_9
    :goto_4
    const v2, 0x7f0f0095

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v27, :cond_15

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    if-eqz v27, :cond_16

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x7f0f0097

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    const/4 v2, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_17

    const/16 v26, 0x1

    :goto_7
    const v2, 0x7f0f0093

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v34, :cond_18

    if-eqz v26, :cond_18

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0f009a

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v34, :cond_a

    if-nez v26, :cond_a

    if-eqz v29, :cond_19

    :cond_a
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0f007e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    if-nez v34, :cond_b

    if-eqz v26, :cond_1a

    :cond_b
    const/4 v2, 0x0

    :goto_a
    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v34, :cond_1b

    if-nez v26, :cond_1b

    const v2, 0x7f020026

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_b
    const v2, 0x7f0f0016

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v29, :cond_1c

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_c

    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/android/calendar/AgendaDeleteActivity;

    if-nez v2, :cond_1d

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0

    :cond_d
    const/16 v29, 0x0

    goto/16 :goto_1

    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_f
    const/4 v2, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/16 v2, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-nez v2, :cond_10

    const/16 v2, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_11

    new-instance v30, Lcom/android/calendar/vcal/pim/vcalendar/Duration;

    invoke-direct/range {v30 .. v30}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;-><init>()V

    :try_start_0
    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/calendar/vcal/pim/vcalendar/DateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_d
    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->addTo(J)J

    move-result-wide v6

    :cond_10
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v8, 0x0

    if-eqz v24, :cond_12

    const/4 v9, 0x1

    :goto_f
    invoke-static/range {v2 .. v9}, Lcom/android/calendar/Utils;->formatDateTimeString(Landroid/content/Context;ZJJZZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :catch_0
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/calendar/vcal/pim/vcalendar/DateException;->printStackTrace()V

    goto :goto_d

    :cond_11
    move-wide v6, v4

    goto :goto_e

    :cond_12
    const/4 v9, 0x0

    goto :goto_f

    :cond_13
    if-eqz v29, :cond_9

    const-string v2, "facebook_schedule_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_9

    sget-object v9, Lcom/android/calendar/Utils;->FACEBOOK_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "photo"

    aput-object v3, v10, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    if-eqz v23, :cond_9

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    const/4 v2, 0x0

    move-object/from16 v0, v32

    array-length v3, v0

    move-object/from16 v0, v32

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v31

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v27, 0x1

    :cond_14
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :cond_15
    const/16 v2, 0x8

    goto/16 :goto_5

    :cond_16
    const/16 v2, 0x8

    goto/16 :goto_6

    :cond_17
    const/16 v26, 0x0

    goto/16 :goto_7

    :cond_18
    const/16 v2, 0x8

    goto/16 :goto_8

    :cond_19
    const/16 v2, 0x8

    goto/16 :goto_9

    :cond_1a
    const/16 v2, 0x8

    goto/16 :goto_a

    :cond_1b
    const v2, 0x7f02001e

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_b

    :cond_1c
    const/16 v2, 0x8

    goto/16 :goto_c

    :cond_1d
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0
.end method
