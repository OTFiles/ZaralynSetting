.class public Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;
.super Landroid/app/Activity;
.source "UsbModeChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$OnStartTetheringCallback;,
        Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$MyUsbFunctionRes;
    }
.end annotation


# static fields
.field static final FUNCTIONS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$MyUsbFunctionRes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mFunciontsViewArrays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsParentControlConnectUsbLable:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$OnStartTetheringCallback;

.field private mPreviousFunction:J

.field private mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 85
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->FUNCTIONS_MAP:Ljava/util/Map;

    .line 88
    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$MyUsbFunctionRes;

    const v3, 0x7f120f6f

    const v4, 0x7f120f70

    invoke-direct {v2, v3, v4}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$MyUsbFunctionRes;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$MyUsbFunctionRes;

    const v3, 0x7f120f71

    const v4, 0x7f120f72

    invoke-direct {v2, v3, v4}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$MyUsbFunctionRes;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$MyUsbFunctionRes;

    const v3, 0x7f120f6d

    const v4, 0x7f120f6e

    invoke-direct {v2, v3, v4}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$MyUsbFunctionRes;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mFunciontsViewArrays:Ljava/util/ArrayList;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mIsParentControlConnectUsbLable:Z

    .line 104
    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$1;-><init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    .line 70
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lcom/android/settings/connecteddevice/usb/UsbBackend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    .line 70
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    .line 70
    iget-wide v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mPreviousFunction:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;
    .param p1, "x1"    # J

    .line 70
    iput-wide p1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mPreviousFunction:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    .line 70
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$OnStartTetheringCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    .line 70
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$OnStartTetheringCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;

    .line 70
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private inflateOption(JLcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$MyUsbFunctionRes;ZLandroid/widget/LinearLayout;Z)Landroid/view/View;
    .locals 4
    .param p1, "function"    # J
    .param p3, "resTextId"    # Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$MyUsbFunctionRes;
    .param p4, "selected"    # Z
    .param p5, "container"    # Landroid/widget/LinearLayout;
    .param p6, "areFunctionsSupported"    # Z

    .line 195
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0186

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 197
    .local v0, "viewItem":Landroid/view/View;
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 198
    .local v1, "titleView":Landroid/widget/TextView;
    iget v2, p3, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$MyUsbFunctionRes;->mTitleId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 199
    const v2, 0x1020010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 200
    .local v2, "summaryView":Landroid/widget/TextView;
    iget v3, p3, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$MyUsbFunctionRes;->mSummaryId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 201
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 211
    new-instance v3, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;

    invoke-direct {v3, p0, p6, p1, p2}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$4;-><init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;ZJ)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    move-object v3, v0

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, p4}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 254
    if-eqz p6, :cond_0

    .line 255
    invoke-virtual {p5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 312
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 313
    const/16 v0, 0x3ff

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 315
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 316
    :cond_1
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====divhee===========REQUEST_PARENT_CONTROL_CONNECT_USB_CODE=======resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mFunciontsViewArrays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 318
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 319
    .end local v2
    goto :goto_0

    .line 325
    :cond_2
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    .line 125
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 126
    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$OnStartTetheringCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$OnStartTetheringCallback;-><init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$OnStartTetheringCallback;

    .line 127
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mPreviousFunction:J

    .line 128
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 130
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    const v1, 0x7f120f6a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 132
    const v1, 0x7f0d0221

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$3;-><init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)V

    .line 133
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$2;-><init>(Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;)V

    .line 139
    const v2, 0x7f120358

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    .line 145
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 147
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0a00f7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mContainer:Landroid/widget/LinearLayout;

    .line 148
    const-string v0, "no_usb_file_transfer"

    .line 149
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 148
    invoke-static {p0, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 154
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mFunciontsViewArrays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_parent_control_connect_usb_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mIsParentControlConnectUsbLable:Z

    .line 157
    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->FUNCTIONS_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 158
    .local v11, "option":J
    sget-object v3, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->FUNCTIONS_MAP:Ljava/util/Map;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$MyUsbFunctionRes;

    iget-wide v3, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mPreviousFunction:J

    cmp-long v3, v3, v11

    if-nez v3, :cond_1

    move v8, v1

    goto :goto_2

    :cond_1
    move v8, v2

    :goto_2
    iget-object v9, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v3, v11, v12}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsSupported(J)Z

    move-result v10

    move-object v4, p0

    move-wide v5, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->inflateOption(JLcom/android/settings/connecteddevice/usb/UsbModeChooserActivity$MyUsbFunctionRes;ZLandroid/widget/LinearLayout;Z)Landroid/view/View;

    move-result-object v3

    .line 159
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 160
    iget-boolean v4, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mIsParentControlConnectUsbLable:Z

    xor-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 161
    iget-object v4, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mFunciontsViewArrays:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v3
    .end local v11
    :cond_2
    goto :goto_1

    .line 164
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mIsParentControlConnectUsbLable:Z

    if-eqz v0, :cond_4

    .line 165
    const/16 v0, 0x3ff

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->runCheckParentPassword(I)I

    .line 167
    :cond_4
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->mFunciontsViewArrays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 184
    return-void
.end method

.method public runCheckParentPassword(I)I
    .locals 4
    .param p1, "request"    # I

    .line 287
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 289
    return v1

    .line 291
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isParentMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isDreamMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dream_launcher_mode_lable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 294
    return v1

    .line 298
    :cond_2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 299
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.INPUT_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/connecteddevice/usb/UsbModeChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 301
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 305
    .end local v0
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_0

    .line 302
    :catch_1
    move-exception v0

    .line 303
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 304
    const-string v1, ""

    const-string v2, "===323=divhee========android.readboy.parentmanager.INPUT_PASSWORD=d=not=install==="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v0
    nop

    .line 308
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
