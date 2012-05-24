.class Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;
.super Landroid/widget/ArrayAdapter;
.source "AccountSettingsEditQuickResponsesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayAdapterWithButtons"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/emailcommon/provider/QuickResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mContext:Landroid/content/Context;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mOnDeleteListener:Landroid/view/View$OnClickListener;

.field private mOnEditListener:Landroid/view/View$OnClickListener;

.field private mQuickResponses:[Lcom/android/emailcommon/provider/QuickResponse;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/android/emailcommon/provider/QuickResponse;Landroid/app/FragmentManager;J)V
    .locals 2

    const v0, 0x7f040091

    const v1, 0x7f100144

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;->mOnEditListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;->mOnDeleteListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;->mQuickResponses:[Lcom/android/emailcommon/provider/QuickResponse;

    iput-wide p4, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;->mAccountId:J

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-static {}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->access$200()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;)Landroid/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;->mAccountId:J

    return-wide v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;->mQuickResponses:[Lcom/android/emailcommon/provider/QuickResponse;

    aget-object v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;->mOnEditListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100249

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;->mQuickResponses:[Lcom/android/emailcommon/provider/QuickResponse;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;->mOnDeleteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
