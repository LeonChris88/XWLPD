.class Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionModeCallback"
.end annotation


# instance fields
.field private mActiveFollowUpFlag:Landroid/view/MenuItem;

.field private mAddStar:Landroid/view/MenuItem;

.field private mClearFollowUpFlag:Landroid/view/MenuItem;

.field mClosedByUser:Z

.field private mCompleteFollowUpFlag:Landroid/view/MenuItem;

.field private mConversationIgnore:Landroid/view/MenuItem;

.field private mConversationMoveAlways:Landroid/view/MenuItem;

.field private mConversationRestore:Landroid/view/MenuItem;

.field private mForward:Landroid/view/MenuItem;

.field private mMarkRead:Landroid/view/MenuItem;

.field private mMarkUnread:Landroid/view/MenuItem;

.field private mMove:Landroid/view/MenuItem;

.field private mRemoveStar:Landroid/view/MenuItem;

.field private mTrash:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClosedByUser:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->onDeleteSmsPopup()V

    return-void
.end method

.method private onDeleteSmsPopup()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080058

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080535

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080042

    new-instance v3, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$12;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$12;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080043

    new-instance v3, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$13;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$13;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :goto_0
    :sswitch_0
    return v4

    :sswitch_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$4200(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0803cf

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleRead()V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    aget-wide v2, v0, v3

    invoke-static {v1, v2, v3}, Lcom/android/email/activity/MessageListFragment;->access$4300(Lcom/android/email/activity/MessageListFragment;J)V

    goto :goto_0

    :sswitch_4
    sget v1, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    if-lez v1, :cond_1

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->onDeleteSmsPopup()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->onMultiDelete()V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->onMultiMove()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1002c8 -> :sswitch_1
        0x7f1002e3 -> :sswitch_1
        0x7f1002fb -> :sswitch_1
        0x7f1002fc -> :sswitch_1
        0x7f1002fd -> :sswitch_1
        0x7f1002fe -> :sswitch_1
        0x7f1002ff -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7f1002c8 -> :sswitch_3
        0x7f1002e3 -> :sswitch_4
        0x7f1002fb -> :sswitch_5
        0x7f1002fc -> :sswitch_2
        0x7f1002fd -> :sswitch_2
        0x7f1002fe -> :sswitch_0
        0x7f1002ff -> :sswitch_0
        0x7f100300 -> :sswitch_0
        0x7f100301 -> :sswitch_0
        0x7f100302 -> :sswitch_0
        0x7f100304 -> :sswitch_0
        0x7f100305 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListFragment;->access$3502(Lcom/android/email/activity/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v10

    const v22, 0x7f0f0022

    move/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v22, 0x7f1002c8

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mForward:Landroid/view/MenuItem;

    const v22, 0x7f1002fb

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    const v22, 0x7f1002fc

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    const v22, 0x7f1002fd

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    const v22, 0x7f1002fe

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    const v22, 0x7f1002ff

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    const v22, 0x7f100300

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mActiveFollowUpFlag:Landroid/view/MenuItem;

    const v22, 0x7f100301

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mCompleteFollowUpFlag:Landroid/view/MenuItem;

    const v22, 0x7f100302

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClearFollowUpFlag:Landroid/view/MenuItem;

    const v22, 0x7f100304

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationIgnore:Landroid/view/MenuItem;

    const v22, 0x7f100305

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationRestore:Landroid/view/MenuItem;

    const v22, 0x7f100303

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationMoveAlways:Landroid/view/MenuItem;

    const v22, 0x7f1002e3

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mTrash:Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$3600(Lcom/android/email/activity/MessageListFragment;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainOnlyConversation()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    const v23, 0x7f1000b9

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$3700(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$3700(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$1500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    const-wide/high16 v24, 0x402c

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_0

    if-nez v9, :cond_14

    :cond_0
    const v22, 0x7f0c010f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$1;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    const v23, 0x7f1000ba

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gez v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v22

    const-wide/16 v24, -0x4

    cmp-long v22, v22, v24

    if-nez v22, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$3700(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v22

    if-eqz v22, :cond_15

    :cond_3
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xa

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$3700(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v22

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$3700(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v22

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$1500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    const-wide/high16 v24, 0x402c

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_4

    if-nez v9, :cond_16

    :cond_4
    const v22, 0x7f0c010f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$2;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    const v23, 0x7f1000bc

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gez v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v22

    const-wide/16 v24, -0x4

    cmp-long v22, v22, v24

    if-nez v22, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$3700(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v22

    if-eqz v22, :cond_17

    :cond_7
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xa

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$3700(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v22

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$3700(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v22

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$1500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    const-wide/high16 v24, 0x402c

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_8

    if-nez v9, :cond_18

    :cond_8
    const v22, 0x7f0c010f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_4
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$3;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    const v23, 0x7f1000b7

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xa

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const v22, 0x7f0c010f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$4;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    const v23, 0x7f1000bb

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xa

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const v22, 0x7f0c010f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$5;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mTrash:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mTrash:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mTrash:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    const v23, 0x7f1000b6

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$3700(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v22

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$3700(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v22

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$1500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    const-wide/high16 v24, 0x402c

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_c

    if-nez v9, :cond_19

    :cond_c
    const v22, 0x7f0c010f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mTrash:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$6;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationIgnore:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationIgnore:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationIgnore:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$7;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$7;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationMoveAlways:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationMoveAlways:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationMoveAlways:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$8;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$8;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mActiveFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mActiveFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mActiveFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    const v23, 0x7f1000b8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$3700(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v22

    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$3700(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v22

    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$1500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    const-wide/high16 v24, 0x402c

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_10

    if-nez v9, :cond_1a

    :cond_10
    const v22, 0x7f0c010f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mActiveFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$9;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$9;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mCompleteFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mCompleteFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mCompleteFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$10;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$10;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClearFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClearFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClearFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$11;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$11;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;

    move-result-object v22

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Lcom/android/email/activity/MessageListFragment$Callback;->onEnterSelectionMode(Z)V

    const/16 v22, 0x1

    return v22

    :cond_14
    const v22, 0x7f0c0110

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0

    :cond_15
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    :cond_16
    const v22, 0x7f0c0110

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2

    :cond_17
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    :cond_18
    const v22, 0x7f0c0110

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_4

    :cond_19
    const v22, 0x7f0c0110

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_5

    :cond_1a
    const v22, 0x7f0c0110

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_6
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/email/activity/MessageListFragment$Callback;->onEnterSelectionMode(Z)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListFragment;->access$3502(Lcom/android/email/activity/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClosedByUser:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getSelectedCount()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$3500(Lcom/android/email/activity/MessageListFragment;)Landroid/view/ActionMode;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0006

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v14, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainNonStarredMessage()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainReadMessage()Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->doseSelectionContainFlaggedMessage()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainOnlyConversation()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mForward:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mActiveFollowUpFlag:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mCompleteFollowUpFlag:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClearFollowUpFlag:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationIgnore:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationRestore:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationMoveAlways:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mTrash:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_d

    sget-boolean v1, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    packed-switch v10, :pswitch_data_0

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$1500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x402c

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationIgnore:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationMoveAlways:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v12

    array-length v1, v12

    const/4 v2, 0x1

    if-le v1, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mForward:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->canMoveFrom(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    if-gtz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$4100(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mTrash:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f1002c8

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->isForwardBlock()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_3
    const/4 v1, 0x1

    return v1

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClearFollowUpFlag:Landroid/view/MenuItem;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    if-gtz v1, :cond_5

    const/4 v1, 0x1

    :goto_4
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mCompleteFollowUpFlag:Landroid/view/MenuItem;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    if-gtz v1, :cond_6

    const/4 v1, 0x1

    :goto_5
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mActiveFollowUpFlag:Landroid/view/MenuItem;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    if-gtz v1, :cond_7

    const/4 v1, 0x1

    :goto_6
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "syncServerId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "fromList"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-wide v5, v12, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/16 v16, 0x0

    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mForward:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    :goto_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mForward:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    :cond_b
    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v1

    const-wide/16 v3, -0x4

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
