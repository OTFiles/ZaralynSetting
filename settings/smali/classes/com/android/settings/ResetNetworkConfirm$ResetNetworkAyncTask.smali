.class Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;
.super Landroid/os/AsyncTask;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResetNetworkAyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEraseESimCard:Z

.field private mPackageName:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSubId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IZLandroid/app/ProgressDialog;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "subId"    # I
    .param p4, "eraseESim"    # Z
    .param p5, "progressDialog"    # Landroid/app/ProgressDialog;

    .line 117
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mSubId:I

    .line 118
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mPackageName:Ljava/lang/String;

    .line 120
    iput p3, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mSubId:I

    .line 121
    iput-boolean p4, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mEraseESimCard:Z

    .line 122
    iput-object p5, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 123
    return-void
.end method

.method private cleanUpSmsRawTable(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "raw/permanentDelete"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 214
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method private restoreDefaultApn(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 221
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 223
    .local v0, "uri":Landroid/net/Uri;
    iget v1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mSubId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 227
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 228
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 229
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .line 153
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 155
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->factoryReset()V

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    .line 160
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 161
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->factoryReset()V

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    .line 166
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 167
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_2

    .line 168
    iget v3, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mSubId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->factoryReset(I)V

    .line 171
    :cond_2
    iget-object v3, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mContext:Landroid/content/Context;

    const-string v4, "netpolicy"

    .line 172
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicyManager;

    .line 173
    .local v3, "policyManager":Landroid/net/NetworkPolicyManager;
    if-eqz v3, :cond_3

    .line 174
    iget v4, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mSubId:I

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "subscriberId":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    .line 178
    .end local v4
    :cond_3
    iget-object v4, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mContext:Landroid/content/Context;

    const-string v5, "bluetooth"

    .line 179
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothManager;

    .line 180
    .local v4, "btManager":Landroid/bluetooth/BluetoothManager;
    if-eqz v4, :cond_4

    .line 181
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    .line 182
    .local v5, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v5, :cond_4

    .line 183
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    .line 184
    iget-object v6, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    .line 185
    invoke-static {v6, v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v6

    .line 186
    .local v6, "mLocalBtManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    if-eqz v6, :cond_4

    .line 187
    nop

    .line 188
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v7

    .line 189
    .local v7, "cachedDeviceManager":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearAllDevices()V

    .line 194
    .end local v5
    .end local v6
    .end local v7
    :cond_4
    iget-object v5, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mSubId:I

    .line 195
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v6

    .line 194
    invoke-static {v5, v6}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v5

    .line 195
    invoke-virtual {v5}, Lcom/android/ims/ImsManager;->factoryReset()V

    .line 200
    iget-object v5, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->cleanUpSmsRawTable(Landroid/content/Context;)V

    .line 201
    iget-object v5, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->restoreDefaultApn(Landroid/content/Context;)V

    .line 203
    iget-boolean v5, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mEraseESimCard:Z

    if-eqz v5, :cond_5

    .line 204
    iget-object v5, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mPackageName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 207
    :cond_5
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "succeeded"    # Ljava/lang/Boolean;

    .line 134
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 136
    iput-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 139
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mContext:Landroid/content/Context;

    const v1, 0x7f120bcf

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 143
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120bcc

    .line 144
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f120bcb

    .line 145
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    .line 146
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 149
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 109
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 130
    :cond_0
    return-void
.end method
