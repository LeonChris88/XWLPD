.class public Lcom/android/calendar/DayEventListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DayEventListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/DayEventListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mDeclinedColor:I

.field private mFormatter:Ljava/util/Formatter;

.field public mImageLoader:Lcom/android/calendar/ImageLoader;

.field private mInflater:Landroid/view/LayoutInflater;

.field mListView:Lcom/android/calendar/DayEventListView;

.field private mNoTitleLabel:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/DayEventListView;)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/DayEventListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/calendar/DayEventListAdapter;->mListView:Lcom/android/calendar/DayEventListView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mNoTitleLabel:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayEventListAdapter;->mDeclinedColor:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/DayEventListAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mFormatter:Ljava/util/Formatter;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/calendar/ImageLoader;

    invoke-direct {v0, p1}, Lcom/android/calendar/ImageLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mImageLoader:Lcom/android/calendar/ImageLoader;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mListView:Lcom/android/calendar/DayEventListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mListView:Lcom/android/calendar/DayEventListView;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->getEventList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mListView:Lcom/android/calendar/DayEventListView;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->getEventList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 29

    const/16 v20, 0x0

    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_9

    move-object/from16 v27, p2

    :goto_0
    check-cast v27, Landroid/widget/LinearLayout;

    if-nez v27, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayEventListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030020

    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    :cond_0
    invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v2, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;

    if-eqz v2, :cond_1

    invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/calendar/DayEventListAdapter$ViewHolder;

    :cond_1
    if-nez v20, :cond_2

    new-instance v20, Lcom/android/calendar/DayEventListAdapter$ViewHolder;

    invoke-direct/range {v20 .. v20}, Lcom/android/calendar/DayEventListAdapter$ViewHolder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const v2, 0x7f0f0013

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v2, 0x7f0f0099

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->when:Landroid/widget/TextView;

    const v2, 0x7f0f0096

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayEventListAdapter;->mListView:Lcom/android/calendar/DayEventListView;

    invoke-virtual {v2}, Lcom/android/calendar/DayEventListView;->getEventList()Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/calendar/Event;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/calendar/Event;->color:I

    move/from16 v16, v0

    if-nez v16, :cond_3

    const v16, -0x222223

    :cond_3
    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->calendarColor:I

    const v2, 0x7f0f0015

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    if-eqz v25, :cond_4

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayEventListAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v25, v0

    :cond_5
    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v17

    iget-boolean v14, v0, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v14, :cond_a

    const/16 v2, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayEventListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/calendar/Event;->contactDataId:I

    if-lez v2, :cond_b

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/calendar/Event;->contactDataId:I

    int-to-long v9, v3

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayEventListAdapter;->mImageLoader:Lcom/android/calendar/ImageLoader;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    const v10, 0x7f0f0095

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v3, v9, v10}, Lcom/android/calendar/ImageLoader;->DisplayImage(Landroid/net/Uri;Landroid/app/Activity;Landroid/widget/ImageView;Landroid/view/View;)Z

    move-result v19

    :cond_6
    :goto_2
    const v2, 0x7f0f0095

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v19, :cond_d

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    if-eqz v19, :cond_e

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x7f0f0097

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0f0093

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/calendar/Event;->isRepeating:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0f009a

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/calendar/Event;->isRepeating:Z

    if-nez v2, :cond_7

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    if-nez v2, :cond_7

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/Event;->isFacebook()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_7
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0f007e

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/calendar/Event;->isRepeating:Z

    if-nez v2, :cond_8

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    if-eqz v2, :cond_11

    :cond_8
    const/4 v2, 0x0

    :goto_7
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/calendar/Event;->isRepeating:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    if-nez v2, :cond_12

    const v2, 0x7f020026

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_8
    const v2, 0x7f0f0016

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/Event;->isFacebook()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    return-object v27

    :cond_9
    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/calendar/Event;->startMillis:J

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/calendar/Event;->endMillis:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayEventListAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/Event;->isFacebook()Z

    move-result v9

    invoke-static/range {v2 .. v9}, Lcom/android/calendar/Utils;->formatDateTimeString(Landroid/content/Context;ZJJZZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/Event;->hasFacebookPhoto()Z

    move-result v2

    if-eqz v2, :cond_6

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

    move-object/from16 v0, v17

    iget-wide v11, v0, Lcom/android/calendar/Event;->id:J

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    if-eqz v18, :cond_6

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    const/4 v2, 0x0

    move-object/from16 v0, v21

    array-length v3, v0

    move-object/from16 v0, v21

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v19, 0x1

    :cond_c
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_d
    const/16 v2, 0x8

    goto/16 :goto_3

    :cond_e
    const/16 v2, 0x8

    goto/16 :goto_4

    :cond_f
    const/16 v2, 0x8

    goto/16 :goto_5

    :cond_10
    const/16 v2, 0x8

    goto/16 :goto_6

    :cond_11
    const/16 v2, 0x8

    goto/16 :goto_7

    :cond_12
    const v2, 0x7f02001e

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_8

    :cond_13
    const/16 v2, 0x8

    goto/16 :goto_9
.end method
