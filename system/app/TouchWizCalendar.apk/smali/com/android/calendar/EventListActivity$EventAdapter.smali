.class Lcom/android/calendar/EventListActivity$EventAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventAdapter"
.end annotation


# instance fields
.field private final CALENDARS_PROJECTION:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mFormatter:Ljava/util/Formatter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNoTitleLabel:Ljava/lang/String;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/android/calendar/EventListActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EventListActivity;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->mNoTitleLabel:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method private getContactId(Landroid/content/ContentResolver;I)I
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "contact_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EventListActivity$EventAdapter;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-static {v0}, Lcom/android/calendar/EventListActivity;->access$000(Lcom/android/calendar/EventListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
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
    .locals 33

    const/16 v31, 0x0

    const/16 v23, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v27

    instance-of v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    if-eqz v2, :cond_0

    move-object/from16 v31, p2

    move-object/from16 v23, v27

    check-cast v23, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    :cond_0
    if-nez v23, :cond_1

    new-instance v23, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    invoke-direct/range {v23 .. v23}, Lcom/android/calendar/AgendaAdapter$ViewHolder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventListActivity$EventAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030020

    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v31

    const v2, 0x7f0f0013

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v2, 0x7f0f0099

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    const v2, 0x7f0f0015

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->calendar:Landroid/view/View;

    const v2, 0x7f0f0096

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v32, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->calendar:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventListActivity$EventAdapter;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-static {v2}, Lcom/android/calendar/EventListActivity;->access$000(Lcom/android/calendar/EventListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/calendar/Event;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/calendar/Event;->color:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    const v17, -0x222223

    :cond_2
    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundColor(I)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    if-eqz v29, :cond_3

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventListActivity$EventAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v29, v0

    :cond_4
    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v20

    iget-boolean v14, v0, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v14, :cond_9

    const/16 v2, 0x8

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventListActivity$EventAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/calendar/Event;->contactDataId:I

    if-lez v2, :cond_a

    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/calendar/Event;->contactDataId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/calendar/EventListActivity$EventAdapter;->getContactId(Landroid/content/ContentResolver;I)I

    move-result v18

    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_6

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v18

    int-to-long v9, v0

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v8, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v25

    if-eqz v25, :cond_6

    invoke-static/range {v25 .. v25}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v24

    if-eqz v24, :cond_5

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v22, 0x1

    :cond_5
    :try_start_0
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    const v2, 0x7f0f0095

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v22, :cond_c

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    if-eqz v22, :cond_d

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x7f0f0097

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0f0093

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/calendar/Event;->isRepeating:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0f009a

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/calendar/Event;->isRepeating:Z

    if-nez v2, :cond_7

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    if-nez v2, :cond_7

    invoke-virtual/range {v20 .. v20}, Lcom/android/calendar/Event;->isFacebook()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_7
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0f007e

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/calendar/Event;->isRepeating:Z

    if-nez v2, :cond_8

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    if-eqz v2, :cond_10

    :cond_8
    const/4 v2, 0x0

    :goto_6
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/calendar/Event;->isRepeating:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    if-nez v2, :cond_11

    const v2, 0x7f020026

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_7
    const v2, 0x7f0f0016

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/android/calendar/Event;->isFacebook()Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    return-object v31

    :cond_9
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/calendar/Event;->startMillis:J

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/android/calendar/Event;->endMillis:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventListActivity$EventAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/android/calendar/Event;->isFacebook()Z

    move-result v9

    invoke-static/range {v2 .. v9}, Lcom/android/calendar/Utils;->formatDateTimeString(Landroid/content/Context;ZJJZZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_a
    invoke-virtual/range {v20 .. v20}, Lcom/android/calendar/Event;->hasFacebookPhoto()Z

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

    move-object/from16 v0, v20

    iget-wide v11, v0, Lcom/android/calendar/Event;->id:J

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    if-eqz v21, :cond_6

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v24

    const/4 v2, 0x0

    move-object/from16 v0, v24

    array-length v3, v0

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v22, 0x1

    :cond_b
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_c
    const/16 v2, 0x8

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
    const v2, 0x7f02001e

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_7

    :cond_12
    const/16 v2, 0x8

    goto/16 :goto_8
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
