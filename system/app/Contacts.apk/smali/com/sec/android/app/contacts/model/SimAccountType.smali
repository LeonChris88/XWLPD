.class public Lcom/sec/android/app/contacts/model/SimAccountType;
.super Lcom/android/contacts/model/BaseAccountType;
.source "SimAccountType.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType;-><init>()V

    const-string v0, "vnd.sec.contact.sim"

    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    const v0, 0x7f0a0241

    iput v0, p0, Lcom/android/contacts/model/AccountType;->titleRes:I

    const v0, 0x7f020115

    iput v0, p0, Lcom/android/contacts/model/AccountType;->iconRes:I

    iput-object v1, p0, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/model/SimAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/model/SimAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/model/SimAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/model/SimAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/model/SimAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    return-void
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
