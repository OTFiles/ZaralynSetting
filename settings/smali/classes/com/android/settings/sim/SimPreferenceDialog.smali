.class public Lcom/android/settings/sim/SimPreferenceDialog;
.super Landroid/app/Activity;
.source "SimPreferenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;
    }
.end annotation


# instance fields
.field private final SIM_NAME:Ljava/lang/String;

.field private final TINT_POS:Ljava/lang/String;

.field mBuilder:Landroid/app/AlertDialog$Builder;

.field private mColorStrings:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mDialogLayout:Landroid/view/View;

.field private mSlotId:I

.field private mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTintArr:[I

.field private mTintSelectorPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const-string v0, "sim_name"

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->SIM_NAME:Ljava/lang/String;

    .line 57
    const-string v0, "tint_pos"

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->TINT_POS:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimPreferenceDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimPreferenceDialog;

    .line 45
    iget v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/sim/SimPreferenceDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimPreferenceDialog;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimPreferenceDialog;

    .line 45
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimPreferenceDialog;

    .line 45
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/sim/SimPreferenceDialog;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimPreferenceDialog;

    .line 45
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintArr:[I

    return-object v0
.end method

.method private createEditDialog(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "bundle"    # Landroid/os/Bundle;

    move-object/from16 v0, p0

    .line 106
    iget-object v1, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 107
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v3, 0x7f0a03da

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 108
    .local v2, "nameText":Landroid/widget/EditText;
    iget-object v3, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-static {v2}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    .line 110
    iget-object v3, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v4, 0x7f0a03ec

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 111
    .local v3, "tintSpinner":Landroid/widget/Spinner;
    new-instance v4, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;

    iget-object v5, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mColorStrings:[Ljava/lang/String;

    const v7, 0x7f0d019e

    invoke-direct {v4, v0, v5, v7, v6}, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 113
    .local v4, "adapter":Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;
    const v5, 0x1090009

    invoke-virtual {v4, v5}, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->setDropDownViewResource(I)V

    .line 114
    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 116
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    iget-object v7, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintArr:[I

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 117
    iget-object v7, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintArr:[I

    aget v7, v7, v6

    iget-object v8, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 118
    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 119
    iput v6, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    .line 120
    goto :goto_1

    .line 116
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 124
    .end local v6
    :cond_1
    :goto_1
    new-instance v6, Lcom/android/settings/sim/SimPreferenceDialog$1;

    invoke-direct {v6, v0, v3}, Lcom/android/settings/sim/SimPreferenceDialog$1;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;Landroid/widget/Spinner;)V

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 137
    iget-object v6, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 139
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    iget-object v7, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v8, 0x7f0a02b9

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 140
    .local v7, "numberView":Landroid/widget/TextView;
    iget-object v8, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v8

    .line 141
    .local v8, "rawNumber":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const v10, 0x104000e

    if-eqz v9, :cond_2

    .line 142
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 144
    :cond_2
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :goto_2
    iget-object v9, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v9

    .line 148
    .local v9, "simCarrierName":Ljava/lang/String;
    iget-object v11, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v12, 0x7f0a00c8

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 149
    .local v11, "carrierView":Landroid/widget/TextView;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    move-object v10, v9

    goto :goto_3

    .line 150
    :cond_3
    iget-object v12, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 149
    :goto_3
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v10, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v12, 0x7f120d17

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    iget-object v15, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    .line 153
    invoke-virtual {v15}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v15

    add-int/2addr v15, v13

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v14, v5

    .line 152
    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 155
    iget-object v5, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f1209ba

    new-instance v12, Lcom/android/settings/sim/SimPreferenceDialog$2;

    invoke-direct {v12, v0, v3}, Lcom/android/settings/sim/SimPreferenceDialog$2;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;Landroid/widget/Spinner;)V

    invoke-virtual {v5, v10, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    iget-object v5, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f120358

    new-instance v12, Lcom/android/settings/sim/SimPreferenceDialog$3;

    invoke-direct {v12, v0}, Lcom/android/settings/sim/SimPreferenceDialog$3;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;)V

    invoke-virtual {v5, v10, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    iget-object v5, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/android/settings/sim/SimPreferenceDialog$4;

    invoke-direct {v10, v0}, Lcom/android/settings/sim/SimPreferenceDialog$4;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;)V

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    iget-object v5, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 190
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iput-object p0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/sim/SimPreferenceDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "slot_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSlotId:I

    .line 65
    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 66
    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSlotId:I

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    .line 67
    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintArr:[I

    .line 68
    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mColorStrings:[Ljava/lang/String;

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    .line 71
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 72
    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    .line 73
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 74
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0d00eb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    .line 75
    iget-object v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimPreferenceDialog;->createEditDialog(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 95
    const-string v0, "tint_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, "pos":I
    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v2, 0x7f0a03ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 97
    .local v1, "tintSpinner":Landroid/widget/Spinner;
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 98
    iput v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    .line 100
    iget-object v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v3, 0x7f0a03da

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 101
    .local v2, "nameText":Landroid/widget/EditText;
    const-string v3, "sim_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static {v2}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    .line 103
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 82
    const-string v0, "tint_pos"

    iget v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v1, 0x7f0a03da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 85
    .local v0, "nameText":Landroid/widget/EditText;
    const-string v1, "sim_name"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    return-void
.end method
