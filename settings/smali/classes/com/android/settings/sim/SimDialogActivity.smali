.class public Lcom/android/settings/sim/SimDialogActivity;
.super Landroid/app/Activity;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;
    }
.end annotation


# static fields
.field public static DIALOG_TYPE_KEY:Ljava/lang/String;

.field public static PREFERRED_SIM:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-string v0, "SimDialogActivity"

    sput-object v0, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    .line 51
    const-string v0, "preferred_sim"

    sput-object v0, Lcom/android/settings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    .line 52
    const-string v0, "dialog_type"

    sput-object v0, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimDialogActivity;I)Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimDialogActivity;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .line 48
    invoke-static {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .line 48
    invoke-static {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimDialogActivity;
    .param p1, "x1"    # Landroid/telecom/PhoneAccountHandle;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method private displayPreferredDialog(I)V
    .locals 8
    .param p1, "slotId"    # I

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 82
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 83
    invoke-virtual {v2, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 85
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 86
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    .local v3, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f120d35

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 88
    const v4, 0x7f120d34

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 89
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    .line 88
    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 91
    const v4, 0x7f1211be

    new-instance v5, Lcom/android/settings/sim/SimDialogActivity$1;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/settings/sim/SimDialogActivity$1;-><init>(Lcom/android/settings/sim/SimDialogActivity;Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    const v4, 0x7f120937

    new-instance v5, Lcom/android/settings/sim/SimDialogActivity$2;

    invoke-direct {v5, p0}, Lcom/android/settings/sim/SimDialogActivity$2;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 113
    .end local v3
    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->finish()V

    .line 116
    :goto_0
    return-void
.end method

.method private static setDefaultDataSubId(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 119
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 120
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 121
    const v1, 0x7f120463

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 122
    return-void
.end method

.method private static setDefaultSmsSubId(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 125
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 126
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 127
    return-void
.end method

.method private setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 1
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .line 130
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 131
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 132
    return-void
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 6
    .param p1, "subId"    # I

    .line 135
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 136
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 137
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    nop

    .line 138
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 140
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 142
    .local v3, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v0, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    .line 143
    .local v4, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 144
    return-object v3

    .line 146
    .end local v3
    .end local v4
    :cond_0
    goto :goto_0

    .line 148
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 152
    move/from16 v9, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 153
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v11

    .line 154
    .local v11, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    nop

    .line 155
    invoke-virtual {v11}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v12

    .line 156
    .local v12, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v12, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    move v13, v1

    .line 158
    .local v13, "selectableSubInfoLength":I
    new-instance v1, Lcom/android/settings/sim/SimDialogActivity$3;

    invoke-direct {v1, v7, v9, v12, v8}, Lcom/android/settings/sim/SimDialogActivity$3;-><init>(Lcom/android/settings/sim/SimDialogActivity;ILjava/util/List;Landroid/content/Context;)V

    move-object v14, v1

    .line 191
    .local v14, "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/settings/sim/SimDialogActivity$4;

    invoke-direct {v1, v7}, Lcom/android/settings/sim/SimDialogActivity$4;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    move-object v15, v1

    .line 202
    .local v15, "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    .line 203
    .local v6, "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v1, 0x1

    if-ne v9, v1, :cond_3

    .line 204
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 205
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 206
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    nop

    .line 207
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 209
    .local v4, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v1, 0x7f120d03

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 212
    nop

    .line 213
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v2, v5}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v5

    .line 214
    .local v5, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual {v5}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v0

    .line 216
    .local v0, "subId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 217
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 218
    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 219
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v1
    nop

    .line 223
    const/4 v1, 0x0

    goto :goto_2

    .line 221
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v0
    .end local v5
    :goto_2
    goto :goto_1

    .line 224
    .end local v2
    .end local v3
    .end local v4
    :cond_2
    goto :goto_4

    .line 225
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v13, :cond_5

    .line 226
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 227
    .restart local v1
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 228
    .local v2, "displayName":Ljava/lang/CharSequence;
    if-nez v2, :cond_4

    .line 229
    const-string v2, ""

    .line 231
    :cond_4
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v1
    .end local v2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 235
    .end local v0
    :cond_5
    :goto_4
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [Ljava/lang/String;

    .line 237
    .local v17, "arr":[Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v5, v0

    .line 239
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v18, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    .line 240
    const/4 v0, 0x1

    if-ne v9, v0, :cond_6

    .line 241
    move-object v2, v6

    goto :goto_5

    :cond_6
    move-object v2, v12

    :goto_5
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d0198

    move-object/from16 v0, v18

    move-object v1, v7

    move-object/from16 v19, v5

    move-object/from16 v5, v17

    .end local v5
    .local v19, "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v16, v6

    move v6, v9

    .end local v6
    .local v16, "callsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;-><init>(Lcom/android/settings/sim/SimDialogActivity;Ljava/util/List;Landroid/content/Context;I[Ljava/lang/String;I)V

    .line 245
    .local v0, "adapter":Landroid/widget/ListAdapter;
    packed-switch v9, :pswitch_data_0

    .line 256
    move-object/from16 v2, v19

    .end local v19
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid dialog type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in SIM dialog."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    .end local v2
    .restart local v19
    :pswitch_0    # 0x2
    const v1, 0x7f120d06

    move-object/from16 v2, v19

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 254
    .end local v19
    .restart local v2
    goto :goto_6

    .line 250
    .end local v2
    .restart local v19
    :pswitch_1    # 0x1
    move-object/from16 v2, v19

    .end local v19
    .restart local v2
    const v1, 0x7f120ca9

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 251
    goto :goto_6

    .line 247
    .end local v2
    .restart local v19
    :pswitch_2    # 0x0
    move-object/from16 v2, v19

    .end local v19
    .restart local v2
    const v1, 0x7f120caa

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 248
    nop

    .line 260
    :goto_6
    invoke-virtual {v2, v0, v14}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 261
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1, v15}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 263
    new-instance v3, Lcom/android/settings/sim/SimDialogActivity$5;

    invoke-direct {v3, v7}, Lcom/android/settings/sim/SimDialogActivity$5;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 270
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2    # 0x0
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, "dialogType":I
    packed-switch v0, :pswitch_data_0

    .line 74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dialog type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sent."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :pswitch_0    # 0x3
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimDialogActivity;->displayPreferredDialog(I)V

    .line 72
    goto :goto_0

    .line 68
    :pswitch_1    # 0x1 0x2 0x0
    invoke-virtual {p0, p0, v0}, Lcom/android/settings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 69
    nop

    .line 77
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_1    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method
