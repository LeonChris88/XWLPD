.class Lcom/android/calendar/AlertActivity$3;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AlertActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AlertActivity$3;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0x493e0

    add-long v7, v14, v16

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$3;->this$0:Lcom/android/calendar/AlertActivity;

    const-string v14, "notification"

    invoke-virtual {v9, v14}, Lcom/android/calendar/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    const/4 v9, 0x0

    invoke-virtual {v10, v9}, Landroid/app/NotificationManager;->cancel(I)V

    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$3;->this$0:Lcom/android/calendar/AlertActivity;

    iget-object v9, v9, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v14, -0x1

    invoke-interface {v9, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$3;->this$0:Lcom/android/calendar/AlertActivity;

    iget-object v9, v9, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$3;->this$0:Lcom/android/calendar/AlertActivity;

    iget-object v9, v9, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x6

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$3;->this$0:Lcom/android/calendar/AlertActivity;

    iget-object v9, v9, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x4

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$3;->this$0:Lcom/android/calendar/AlertActivity;

    iget-object v9, v9, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x5

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/android/calendar/AlertActivity;->access$300(JJJJI)Landroid/content/ContentValues;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$3;->this$0:Lcom/android/calendar/AlertActivity;

    iget-object v9, v9, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->isLast()Z

    move-result v9

    if-eqz v9, :cond_0

    move-wide v11, v7

    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$3;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v9}, Lcom/android/calendar/AlertActivity;->access$400(Lcom/android/calendar/AlertActivity;)Lcom/android/calendar/AlertActivity$QueryHandler;

    move-result-object v9

    const/4 v14, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    sget-object v16, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0, v13}, Lcom/android/calendar/AlertActivity$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$3;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v9}, Lcom/android/calendar/AlertActivity;->access$500(Lcom/android/calendar/AlertActivity;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/AlertActivity$3;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-virtual {v9}, Lcom/android/calendar/AlertActivity;->finish()V

    return-void
.end method
