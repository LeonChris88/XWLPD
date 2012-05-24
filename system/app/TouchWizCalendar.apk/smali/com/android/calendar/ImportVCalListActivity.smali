.class public Lcom/android/calendar/ImportVCalListActivity;
.super Landroid/app/Activity;
.source "ImportVCalListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ImportVCalListActivity$EventAdapter;,
        Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;,
        Lcom/android/calendar/ImportVCalListActivity$CancelListener;
    }
.end annotation


# instance fields
.field private EventListAdapter:Lcom/android/calendar/ImportVCalListActivity$EventAdapter;

.field private TAG:Ljava/lang/String;

.field private countChecked:I

.field private finish:Z

.field private headerCount:I

.field private mActivity:Landroid/app/Activity;

.field private mAllCheckBox:Landroid/widget/CheckBox;

.field private mCancelListener:Lcom/android/calendar/ImportVCalListActivity$CancelListener;

.field private mContentValues:Landroid/content/ContentValues;

.field private mEmptyView:Landroid/view/View;

.field private mEventIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mEventListView:Landroid/widget/ListView;

.field private mFilePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLeftSoftkey:Landroid/widget/Button;

.field private mNewLine:Ljava/lang/String;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mProgressCount:I

.field private mSaveRunnable:Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;

.field private mState:I

.field private mUncheckItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVCalManager:Lcom/android/calendar/vcal/VCalManager;

.field private mVcal:Lcom/android/calendar/ImportExportVCalendar;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "\n"

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mNewLine:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mUncheckItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;-><init>(Lcom/android/calendar/ImportVCalListActivity;Lcom/android/calendar/ImportVCalListActivity$1;)V

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mSaveRunnable:Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mProgressCount:I

    iput v2, p0, Lcom/android/calendar/ImportVCalListActivity;->countChecked:I

    const-string v0, "ExportVCalListActivity"

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/ImportVCalListActivity;->mVcal:Lcom/android/calendar/ImportExportVCalendar;

    new-instance v0, Lcom/android/calendar/ImportVCalListActivity$CancelListener;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/ImportVCalListActivity$CancelListener;-><init>(Lcom/android/calendar/ImportVCalListActivity;Lcom/android/calendar/ImportVCalListActivity$1;)V

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mCancelListener:Lcom/android/calendar/ImportVCalListActivity$CancelListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/ImportVCalListActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/calendar/ImportVCalListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/vcal/VCalManager;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/calendar/ImportVCalListActivity;Lcom/android/calendar/vcal/VCalManager;)Lcom/android/calendar/vcal/VCalManager;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/calendar/ImportVCalListActivity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/calendar/ImportVCalListActivity;->parseVCalendar(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/ImportVCalListActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/ImportVCalListActivity;->updateState(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/calendar/ImportVCalListActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/calendar/ImportVCalListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/calendar/ImportVCalListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/ImportVCalListActivity;->finish:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/calendar/ImportVCalListActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/ImportVCalListActivity;->finish:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/calendar/ImportVCalListActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/calendar/ImportVCalListActivity;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/calendar/ImportVCalListActivity;->importVCalendar(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/ImportVCalListActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mLeftSoftkey:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mUncheckItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/calendar/ImportVCalListActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/ImportVCalListActivity;->countChecked:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/ImportVCalListActivity$EventAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->EventListAdapter:Lcom/android/calendar/ImportVCalListActivity$EventAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/ImportVCalListActivity;Lcom/android/calendar/ImportVCalListActivity$EventAdapter;)Lcom/android/calendar/ImportVCalListActivity$EventAdapter;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity;->EventListAdapter:Lcom/android/calendar/ImportVCalListActivity$EventAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/calendar/ImportVCalListActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/ImportVCalListActivity;->headerCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/ImportVCalListActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mFilePathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/calendar/ImportVCalListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity;->mFilePathList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/calendar/ImportVCalListActivity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/ImportExportVCalendar;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mVcal:Lcom/android/calendar/ImportExportVCalendar;

    return-object v0
.end method

.method private importVCalendar(I)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/calendar/ImportVCalListActivity;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Lcom/android/calendar/vcal/VCalManager;

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/vcal/VCalManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/calendar/ImportVCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    iget-object v1, p0, Lcom/android/calendar/ImportVCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    invoke-virtual {v1}, Lcom/android/calendar/vcal/VCalManager;->insertEventDB()Landroid/net/Uri;

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initResourceRefs()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/calendar/ImportVCalListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0a00cb

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const v2, 0x7f0f000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/calendar/ImportVCalListActivity$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/ImportVCalListActivity$1;-><init>(Lcom/android/calendar/ImportVCalListActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    iput v2, p0, Lcom/android/calendar/ImportVCalListActivity;->headerCount:I

    return-void
.end method

.method private initSDLists()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/calendar/ImportVCalListActivity$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/ImportVCalListActivity$2;-><init>(Lcom/android/calendar/ImportVCalListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private parseVCalendar(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    invoke-virtual {v0, p1}, Lcom/android/calendar/vcal/VCalManager;->parseVCalendar_Backup(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mContentValues:Landroid/content/ContentValues;

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mContentValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateState(I)V
    .locals 4

    const v3, 0x7f0a0196

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mState:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/calendar/ImportVCalListActivity;->mState:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/android/calendar/ImportVCalListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/calendar/ImportVCalListActivity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/android/calendar/ImportVCalListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/calendar/ImportVCalListActivity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0197

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->requestWindowFeature(I)Z

    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/android/calendar/ImportVCalListActivity;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0f00c7

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mEmptyView:Landroid/view/View;

    const v0, 0x7f0f00c9

    invoke-virtual {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mLeftSoftkey:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mLeftSoftkey:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->updateState(I)V

    new-instance v0, Lcom/android/calendar/ImportExportVCalendar;

    invoke-direct {v0}, Lcom/android/calendar/ImportExportVCalendar;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mVcal:Lcom/android/calendar/ImportExportVCalendar;

    invoke-direct {p0}, Lcom/android/calendar/ImportVCalListActivity;->initResourceRefs()V

    invoke-direct {p0}, Lcom/android/calendar/ImportVCalListActivity;->initSDLists()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :sswitch_0
    iget-object v3, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-virtual {p0}, Lcom/android/calendar/ImportVCalListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a019d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/calendar/ImportVCalListActivity;->mProgressCount:I

    goto :goto_0

    :sswitch_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a008d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a00b5

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0075

    new-instance v5, Lcom/android/calendar/ImportVCalListActivity$3;

    invoke-direct {v5, p0}, Lcom/android/calendar/ImportVCalListActivity$3;-><init>(Lcom/android/calendar/ImportVCalListActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_0
        0x3f2 -> :sswitch_1
    .end sparse-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0x7f0f001b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-nez v6, :cond_0

    move v0, v4

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v6, p0, Lcom/android/calendar/ImportVCalListActivity;->countChecked:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/calendar/ImportVCalListActivity;->countChecked:I

    iget-object v6, p0, Lcom/android/calendar/ImportVCalListActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    iget v6, p0, Lcom/android/calendar/ImportVCalListActivity;->countChecked:I

    if-lez v6, :cond_5

    iget-object v5, p0, Lcom/android/calendar/ImportVCalListActivity;->mLeftSoftkey:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_2
    return-void

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/android/calendar/ImportVCalListActivity;->countChecked:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/calendar/ImportVCalListActivity;->countChecked:I

    iget v2, p0, Lcom/android/calendar/ImportVCalListActivity;->headerCount:I

    :goto_3
    iget-object v6, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-gt v2, v6, :cond_3

    iget-object v6, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-ne v1, v6, :cond_4

    iget-object v6, p0, Lcom/android/calendar/ImportVCalListActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/calendar/ImportVCalListActivity;->mLeftSoftkey:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/calendar/ImportVCalListActivity;->setIntent(Landroid/content/Intent;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/calendar/ImportVCalListActivity;->updateState(I)V

    invoke-direct {p0}, Lcom/android/calendar/ImportVCalListActivity;->initResourceRefs()V

    invoke-direct {p0}, Lcom/android/calendar/ImportVCalListActivity;->initSDLists()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p2, Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcom/android/calendar/ImportVCalListActivity;->mProgress:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mProgress:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/android/calendar/ImportVCalListActivity;->mProgressCount:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/calendar/ImportVCalListActivity;->mCancelListener:Lcom/android/calendar/ImportVCalListActivity$CancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/ImportVCalListActivity;->mSaveRunnable:Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3ed
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/calendar/ImportVCalListActivity;->mNewLine:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catch_0
    move-exception v5

    :goto_1
    const/4 v5, 0x0

    :goto_2
    return-object v5

    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 5

    iget v1, p0, Lcom/android/calendar/ImportVCalListActivity;->headerCount:I

    :goto_0
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-gt v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity;->mEventIds:Ljava/util/ArrayList;

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x3ed

    invoke-virtual {p0, v2}, Lcom/android/calendar/ImportVCalListActivity;->showDialog(I)V

    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/calendar/ImportVCalListActivity;->finish()V

    return-void
.end method
