.class Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ParticipantScheduleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ParticipantScheduleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ParticipantScheduleActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/ParticipantScheduleActivity;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 17

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_f

    :try_start_0
    const-string v13, "to"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v13, "displayName"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v13, "mergedFreeBusy"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x0

    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    invoke-static {v13}, Lcom/android/calendar/ParticipantScheduleActivity;->access$100(Lcom/android/calendar/ParticipantScheduleActivity;)Ljava/lang/String;

    move-result-object v11

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    invoke-static {v13}, Lcom/android/calendar/ParticipantScheduleActivity;->access$200(Lcom/android/calendar/ParticipantScheduleActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->newNames:[Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mergedFreeBusy:[Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v11, v13, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v13

    if-eqz p3, :cond_4

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v13

    :cond_5
    const/4 v3, 0x0

    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mScheduleEmails:[Ljava/lang/String;

    array-length v13, v13

    if-ge v3, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mScheduleEmails:[Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->newNames:[Ljava/lang/String;

    add-int/lit8 v14, v3, 0x1

    aput-object v2, v13, v14

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mergedFreeBusy:[Ljava/lang/String;

    add-int/lit8 v14, v3, 0x1

    aput-object v11, v13, v14

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    const-string v13, "ParticipantsScheduleActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " newNames: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v15, v15, Lcom/android/calendar/ParticipantScheduleActivity;->newNames:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",  newNames[1]:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v15, v15, Lcom/android/calendar/ParticipantScheduleActivity;->newNames:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->newNames:[Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mergedFreeBusy:[Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_2
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    array-length v13, v13

    if-ge v3, v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    invoke-static {v13}, Lcom/android/calendar/ParticipantScheduleActivity;->access$100(Lcom/android/calendar/ParticipantScheduleActivity;)Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    const-string v13, "ParticipantsScheduleActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "nameStr: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", nameStr.size():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "ParticipantsScheduleActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "scheduleStr: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", scheduleStr.size():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_b

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_e

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    invoke-virtual {v13}, Lcom/android/calendar/ParticipantScheduleActivity;->showErrorMessage()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    invoke-static {v13}, Lcom/android/calendar/ParticipantScheduleActivity;->access$000(Lcom/android/calendar/ParticipantScheduleActivity;)Z

    move-result v13

    if-nez v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    invoke-virtual {v13}, Lcom/android/calendar/ParticipantScheduleActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    if-eqz p3, :cond_d

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_d
    :goto_3
    return-void

    :cond_e
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v13}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/ParticipantScheduleView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->doAnimate:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_11

    iget-object v13, v1, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v14, v14, Lcom/android/calendar/ParticipantScheduleActivity;->mScheduleTime:Landroid/text/format/Time;

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v13

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v14, v14, Lcom/android/calendar/ParticipantScheduleActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v13, v14}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v14, v14, Lcom/android/calendar/ParticipantScheduleActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v13, v14}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v14, v14, Lcom/android/calendar/ParticipantScheduleActivity;->mScheduleTime:Landroid/text/format/Time;

    invoke-static {v13, v14}, Lcom/android/calendar/ParticipantScheduleActivity;->access$302(Lcom/android/calendar/ParticipantScheduleActivity;Landroid/text/format/Time;)Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iput-object v7, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mNameStr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iput-object v10, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mScheduleStr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v13}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/ParticipantScheduleView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mScheduleTime:Landroid/text/format/Time;

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v7, v10, v14}, Lcom/android/calendar/ParticipantScheduleView;->setSelectedDay(Landroid/text/format/Time;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v13}, Landroid/widget/ViewSwitcher;->showNext()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v13}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    invoke-virtual {v13}, Lcom/android/calendar/ParticipantScheduleActivity;->setArrowButtonVisibility()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_f
    if-eqz p3, :cond_d

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v14, v14, Lcom/android/calendar/ParticipantScheduleActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v13, v14}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v14, v14, Lcom/android/calendar/ParticipantScheduleActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v13, v14}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v13, v13, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4
.end method
