.class public Lcom/android/settings/connecteddevice/usb/UsbBackend;
.super Ljava/lang/Object;
.source "UsbBackend.java"


# instance fields
.field private final mFileTransferRestricted:Z

.field private final mFileTransferRestrictedBySystem:Z

.field private final mMidiSupported:Z

.field private mPort:Landroid/hardware/usb/UsbPort;

.field private mPortStatus:Landroid/hardware/usb/UsbPortStatus;

.field private final mTetheringRestricted:Z

.field private final mTetheringRestrictedBySystem:Z

.field private final mTetheringSupported:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;Landroid/os/UserManager;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userManager"    # Landroid/os/UserManager;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 59
    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->isUsbFileTransferRestricted(Landroid/os/UserManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mFileTransferRestricted:Z

    .line 60
    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->isUsbFileTransferRestrictedBySystem(Landroid/os/UserManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mFileTransferRestrictedBySystem:Z

    .line 61
    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->isUsbTetheringRestricted(Landroid/os/UserManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringRestricted:Z

    .line 62
    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->isUsbTetheringRestrictedBySystem(Landroid/os/UserManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringRestrictedBySystem:Z

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.midi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mMidiSupported:Z

    .line 65
    const-string v0, "connectivity"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 67
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringSupported:Z

    .line 69
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->updatePorts()V

    .line 70
    return-void
.end method

.method private areFunctionDisallowed(J)Z
    .locals 5
    .param p1, "functions"    # J

    .line 193
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mFileTransferRestricted:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x4

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    const-wide/16 v3, 0x10

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringRestricted:Z

    if-eqz v0, :cond_2

    const-wide/16 v3, 0x20

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private areFunctionsDisallowedBySystem(J)Z
    .locals 5
    .param p1, "functions"    # J

    .line 199
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mFileTransferRestrictedBySystem:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x4

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    const-wide/16 v3, 0x10

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringRestrictedBySystem:Z

    if-eqz v0, :cond_2

    const-wide/16 v3, 0x20

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static dataRoleFromString(Ljava/lang/String;)I
    .locals 1
    .param p0, "role"    # Ljava/lang/String;

    .line 171
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static dataRoleToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "role"    # I

    .line 167
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isUsbFileTransferRestricted(Landroid/os/UserManager;)Z
    .locals 1
    .param p0, "userManager"    # Landroid/os/UserManager;

    .line 175
    const-string v0, "no_usb_file_transfer"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isUsbFileTransferRestrictedBySystem(Landroid/os/UserManager;)Z
    .locals 2
    .param p0, "userManager"    # Landroid/os/UserManager;

    .line 183
    const-string v0, "no_usb_file_transfer"

    .line 184
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 183
    invoke-virtual {p0, v0, v1}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private static isUsbTetheringRestricted(Landroid/os/UserManager;)Z
    .locals 1
    .param p0, "userManager"    # Landroid/os/UserManager;

    .line 179
    const-string v0, "no_config_tethering"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isUsbTetheringRestrictedBySystem(Landroid/os/UserManager;)Z
    .locals 2
    .param p0, "userManager"    # Landroid/os/UserManager;

    .line 188
    const-string v0, "no_config_tethering"

    .line 189
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 188
    invoke-virtual {p0, v0, v1}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private updatePorts()V
    .locals 5

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    .line 206
    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 207
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v0

    .line 208
    .local v0, "ports":[Landroid/hardware/usb/UsbPort;
    if-nez v0, :cond_0

    .line 209
    return-void

    .line 213
    :cond_0
    array-length v1, v0

    .line 214
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 215
    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/hardware/usb/UsbManager;->getPortStatus(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v3

    .line 216
    .local v3, "status":Landroid/hardware/usb/UsbPortStatus;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    aget-object v4, v0, v2

    iput-object v4, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    .line 218
    iput-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 219
    goto :goto_1

    .line 214
    .end local v3
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v2
    :cond_2
    :goto_1
    return-void
.end method

.method public static usbFunctionsFromString(Ljava/lang/String;)J
    .locals 2
    .param p0, "functions"    # Ljava/lang/String;

    .line 163
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static usbFunctionsToString(J)Ljava/lang/String;
    .locals 1
    .param p0, "functions"    # J

    .line 158
    invoke-static {p0, p1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public areAllRolesSupported()Z
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 147
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 149
    invoke-virtual {v0, v2, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 153
    invoke-virtual {v0, v1, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 145
    :goto_0
    return v1
.end method

.method public areFunctionsSupported(J)Z
    .locals 6
    .param p1, "functions"    # J

    .line 89
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mMidiSupported:Z

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_0

    const-wide/16 v4, 0x8

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringSupported:Z

    if-nez v0, :cond_2

    const-wide/16 v4, 0x20

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 91
    :cond_1
    return v1

    .line 93
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionDisallowed(J)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsDisallowedBySystem(J)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    return v1
.end method

.method public getCurrentFunctions()J
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getCurrentFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataRole()I
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->updatePorts()V

    .line 103
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getDefaultUsbFunctions()J
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getScreenUnlockedFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPowerRole()I
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->updatePorts()V

    .line 98
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v0

    :goto_0
    return v0
.end method

.method public setCurrentFunctions(J)V
    .locals 1
    .param p1, "functions"    # J

    .line 77
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/usb/UsbManager;->setCurrentFunctions(J)V

    .line 78
    return-void
.end method

.method public setDataRole(I)V
    .locals 3
    .param p1, "role"    # I

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getPowerRole()I

    move-result v0

    .line 127
    .local v0, "newPowerRole":I
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    packed-switch p1, :pswitch_data_0

    .line 136
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :pswitch_0    # 0x2
    const/4 v0, 0x2

    .line 131
    goto :goto_0

    .line 133
    :pswitch_1    # 0x1
    const/4 v0, 0x1

    .line 134
    nop

    .line 139
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1, v2, v0, p1}, Landroid/hardware/usb/UsbManager;->setPortRoles(Landroid/hardware/usb/UsbPort;II)V

    .line 142
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method

.method public setDefaultUsbFunctions(J)V
    .locals 1
    .param p1, "functions"    # J

    .line 85
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/usb/UsbManager;->setScreenUnlockedFunctions(J)V

    .line 86
    return-void
.end method

.method public setPowerRole(I)V
    .locals 3
    .param p1, "role"    # I

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDataRole()I

    move-result v0

    .line 108
    .local v0, "newDataRole":I
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    packed-switch p1, :pswitch_data_0

    .line 117
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :pswitch_0    # 0x2
    const/4 v0, 0x2

    .line 112
    goto :goto_0

    .line 114
    :pswitch_1    # 0x1
    const/4 v0, 0x1

    .line 115
    nop

    .line 120
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1, v2, p1, v0}, Landroid/hardware/usb/UsbManager;->setPortRoles(Landroid/hardware/usb/UsbPort;II)V

    .line 123
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method
