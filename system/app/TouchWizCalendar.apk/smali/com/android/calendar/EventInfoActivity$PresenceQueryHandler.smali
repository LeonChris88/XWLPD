.class Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EventInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresenceQueryHandler"
.end annotation


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/calendar/EventInfoActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EventInfoActivity;Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-direct {p0, p3}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object p3, p0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v7, -0x1

    :try_start_0
    invoke-interface {p3, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_1
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;->this$0:Lcom/android/calendar/EventInfoActivity;

    iget v7, v7, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_EMAIL_INDEX:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;->this$0:Lcom/android/calendar/EventInfoActivity;

    iget v7, v7, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_CONTACT_ID_INDEX:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget-object v7, p0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v7}, Lcom/android/calendar/EventInfoActivity;->access$1400(Lcom/android/calendar/EventInfoActivity;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/EventInfoActivity$ViewHolder;

    iget-object v7, p0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;->this$0:Lcom/android/calendar/EventInfoActivity;

    iget v7, v7, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_PHOTO_ID_INDEX:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v6, :cond_1

    iget-object v4, v6, Lcom/android/calendar/EventInfoActivity$ViewHolder;->presence:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    iget-object v7, p0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;->this$0:Lcom/android/calendar/EventInfoActivity;

    iget v7, v7, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_PRESENCE_INDEX:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Landroid/provider/ContactsContract$Presence;->getPresenceIconResourceId(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    if-lez v3, :cond_1

    iget v7, v6, Lcom/android/calendar/EventInfoActivity$ViewHolder;->updateCounts:I

    if-ge v7, p1, :cond_1

    iput p1, v6, Lcom/android/calendar/EventInfoActivity$ViewHolder;->updateCounts:I

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, v0

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget-object v7, p0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;->mContext:Landroid/content/Context;

    iget-object v8, v6, Lcom/android/calendar/EventInfoActivity$ViewHolder;->badge:Landroid/widget/QuickContactBadge;

    const v9, 0x7f0200a4

    invoke-static {v7, v8, v2, v9}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v7

    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
