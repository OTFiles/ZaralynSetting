.class public Lcom/android/settings/vpn2/ConfigDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ConfigDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUnlocking:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 56
    const-string v0, "connectivity"

    .line 57
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    return-void
.end method

.method private connect(Lcom/android/internal/net/VpnProfile;Z)V
    .locals 4
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "lockdown"    # Z

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->save(Lcom/android/internal/net/VpnProfile;Z)V

    .line 229
    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnUtils;->isVpnLockdown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ConfigDialogFragment"

    const-string v2, "Failed to connect"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0
    goto :goto_1

    .line 233
    :catch_1
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f121020

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 237
    .end local v0
    :goto_0
    nop

    .line 239
    :cond_0
    :goto_1
    return-void
.end method

.method private disconnect(Lcom/android/internal/net/VpnProfile;)Z
    .locals 3
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .line 249
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->isConnected(Lcom/android/internal/net/VpnProfile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    const/4 v0, 0x1

    return v0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnUtils;->disconnectLegacyVpn(Landroid/content/Context;)Z

    move-result v0

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ConfigDialogFragment"

    const-string v2, "Failed to disconnect"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    const/4 v1, 0x0

    return v1
.end method

.method private isConnected(Lcom/android/internal/net/VpnProfile;)Z
    .locals 3
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 261
    .local v0, "connected":Lcom/android/internal/net/LegacyVpnInfo;
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private save(Lcom/android/internal/net/VpnProfile;Z)V
    .locals 5
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "lockdown"    # Z

    .line 214
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 218
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->disconnect(Lcom/android/internal/net/VpnProfile;)Z

    .line 221
    invoke-direct {p0, p2, p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->updateLockdownVpn(ZLcom/android/internal/net/VpnProfile;)V

    .line 222
    return-void
.end method

.method public static show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings/vpn2/VpnSettings;
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "edit"    # Z
    .param p3, "exists"    # Z

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "profile"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 73
    const-string v1, "editing"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    const-string v1, "exists"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    new-instance v1, Lcom/android/settings/vpn2/ConfigDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/vpn2/ConfigDialogFragment;-><init>()V

    .line 77
    .local v1, "frag":Lcom/android/settings/vpn2/ConfigDialogFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "vpnconfigdialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private updateLockdownVpn(ZLcom/android/internal/net/VpnProfile;)V
    .locals 4
    .param p1, "isVpnAlwaysOn"    # Z
    .param p2, "profile"    # Lcom/android/internal/net/VpnProfile;

    .line 193
    if-eqz p1, :cond_1

    .line 195
    invoke-virtual {p2}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f121016

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 198
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 202
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;Z)Z

    .line 204
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    iget-object v2, p2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/vpn2/VpnUtils;->setLockdownVpn(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    .end local v0
    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnUtils;->isVpnLockdown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    .line 211
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 65
    const/16 v0, 0x221

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 85
    iput-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    .line 188
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 189
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/ConfigDialog;

    .line 146
    .local v0, "dialog":Lcom/android/settings/vpn2/ConfigDialog;
    invoke-virtual {v0}, Lcom/android/settings/vpn2/ConfigDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    .line 148
    .local v1, "profile":Lcom/android/internal/net/VpnProfile;
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_4

    .line 150
    invoke-virtual {v0}, Lcom/android/settings/vpn2/ConfigDialog;->isVpnAlwaysOn()Z

    move-result v2

    .line 151
    .local v2, "shouldLockdown":Z
    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/vpn2/ConfigDialog;->isEditing()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    move v10, v4

    .line 152
    .local v10, "shouldConnect":Z
    iget-object v4, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/vpn2/VpnUtils;->isAnyLockdownActive(Landroid/content/Context;)Z

    move-result v4

    move v11, v4

    .line 154
    .local v11, "wasLockdown":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/vpn2/VpnUtils;->isVpnActive(Landroid/content/Context;)Z

    move-result v4

    move v12, v4

    .line 155
    .local v12, "replace":Z
    if-eqz v10, :cond_2

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->isConnected(Lcom/android/internal/net/VpnProfile;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 156
    invoke-static {v12, v11, v2}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->shouldShow(ZZZ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 157
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v3, "opts":Landroid/os/Bundle;
    const-string v4, "profile"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 159
    move-object v4, p0

    move v5, v12

    move v6, v2

    move v7, v11

    move v8, v2

    move-object v9, v3

    invoke-static/range {v4 .. v9}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->show(Landroid/app/Fragment;ZZZZLandroid/os/Bundle;)V

    .line 161
    .end local v3
    goto :goto_2

    :cond_2
    if-eqz v10, :cond_3

    .line 162
    invoke-direct {p0, v1, v2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->connect(Lcom/android/internal/net/VpnProfile;Z)V

    goto :goto_2

    .line 164
    :cond_3
    invoke-direct {p0, v1, v3}, Lcom/android/settings/vpn2/ConfigDialogFragment;->save(Lcom/android/internal/net/VpnProfile;Z)V

    .line 168
    .end local v12
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    goto :goto_3

    .line 166
    :catch_0
    move-exception v3

    .line 167
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "ConfigDialogFragment"

    const-string v5, "Failed to check active VPN state. Skipping."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v2
    .end local v3
    .end local v10
    .end local v11
    :goto_3
    goto :goto_4

    :cond_4
    const/4 v4, -0x3

    if-ne p2, v4, :cond_6

    .line 171
    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->disconnect(Lcom/android/internal/net/VpnProfile;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 172
    const-string v2, "ConfigDialogFragment"

    const-string v3, "Failed to disconnect VPN. Leaving profile in keystore."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 177
    :cond_5
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    .line 178
    .local v4, "keyStore":Landroid/security/KeyStore;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VPN_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 180
    invoke-direct {p0, v3, v1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->updateLockdownVpn(ZLcom/android/internal/net/VpnProfile;)V

    .line 182
    .end local v4
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    .line 183
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "positiveButton"    # Landroid/view/View;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 134
    return-void
.end method

.method public onConfirmLockdown(Landroid/os/Bundle;ZZ)V
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;
    .param p2, "isAlwaysOn"    # Z
    .param p3, "isLockdown"    # Z

    .line 138
    const-string v0, "profile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 139
    .local v0, "profile":Lcom/android/internal/net/VpnProfile;
    invoke-direct {p0, v0, p2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->connect(Lcom/android/internal/net/VpnProfile;Z)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    .line 141
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 113
    .local v1, "profile":Lcom/android/internal/net/VpnProfile;
    const-string v2, "editing"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 114
    .local v8, "editing":Z
    const-string v2, "exists"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 116
    .local v9, "exists":Z
    new-instance v10, Lcom/android/settings/vpn2/ConfigDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object v2, v10

    move-object v4, p0

    move-object v5, v1

    move v6, v8

    move v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/vpn2/ConfigDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V

    .line 117
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 118
    return-object v2
.end method

.method public onResume()V
    .locals 2

    .line 90
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onResume()V

    .line 93
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-boolean v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    .line 101
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    .line 102
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    .line 107
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method
