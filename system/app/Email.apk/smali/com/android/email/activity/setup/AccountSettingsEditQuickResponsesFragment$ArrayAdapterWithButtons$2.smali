.class Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2;
.super Ljava/lang/Object;
.source "AccountSettingsEditQuickResponsesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const v4, 0x7f100249

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/QuickResponse;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/QuickResponse;->getId()J

    move-result-wide v0

    invoke-static {}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->access$200()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->access$200()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f020024

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->access$200()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f020029

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
