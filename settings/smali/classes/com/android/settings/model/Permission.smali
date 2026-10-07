.class public final Lcom/android/settings/model/Permission;
.super Ljava/lang/Object;
.source "Permission.java"


# instance fields
.field private final mAppOp:Ljava/lang/String;

.field private mAppOpAllowed:Z

.field private mFlags:I

.field private mGranted:Z

.field private mIsEphemeral:Z

.field private mIsRuntimeOnly:Z

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZII)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "granted"    # Z
    .param p3, "appOp"    # Ljava/lang/String;
    .param p4, "appOpAllowed"    # Z
    .param p5, "flags"    # I
    .param p6, "protectionLevel"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/settings/model/Permission;->mName:Ljava/lang/String;

    .line 35
    iput-boolean p2, p0, Lcom/android/settings/model/Permission;->mGranted:Z

    .line 36
    iput-object p3, p0, Lcom/android/settings/model/Permission;->mAppOp:Ljava/lang/String;

    .line 37
    iput-boolean p4, p0, Lcom/android/settings/model/Permission;->mAppOpAllowed:Z

    .line 38
    iput p5, p0, Lcom/android/settings/model/Permission;->mFlags:I

    .line 39
    and-int/lit16 v0, p6, 0x1000

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/model/Permission;->mIsEphemeral:Z

    .line 40
    and-int/lit16 v0, p6, 0x2000

    if-eqz v0, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/model/Permission;->mIsRuntimeOnly:Z

    .line 41
    return-void
.end method


# virtual methods
.method public getAppOp()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/settings/model/Permission;->mAppOp:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/settings/model/Permission;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hasAppOp()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/settings/model/Permission;->mAppOp:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAppOpAllowed()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/android/settings/model/Permission;->mAppOpAllowed:Z

    return v0
.end method

.method public isEphemeral()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/android/settings/model/Permission;->mIsEphemeral:Z

    return v0
.end method

.method public isGranted()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/android/settings/model/Permission;->mGranted:Z

    return v0
.end method

.method public isGrantingAllowed(ZZ)Z
    .locals 1
    .param p1, "isEphemeralApp"    # Z
    .param p2, "supportsRuntimePermissions"    # Z

    .line 148
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/model/Permission;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p2, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/model/Permission;->isRuntimeOnly()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 148
    :goto_1
    return v0
.end method

.method public isReviewRequired()Z
    .locals 1

    .line 64
    iget v0, p0, Lcom/android/settings/model/Permission;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRuntimeOnly()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/android/settings/model/Permission;->mIsRuntimeOnly:Z

    return v0
.end method

.method public isSystemFixed()Z
    .locals 1

    .line 92
    iget v0, p0, Lcom/android/settings/model/Permission;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserFixed()Z
    .locals 1

    .line 80
    iget v0, p0, Lcom/android/settings/model/Permission;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserSet()Z
    .locals 2

    .line 100
    iget v0, p0, Lcom/android/settings/model/Permission;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public resetReviewRequired()V
    .locals 1

    .line 68
    iget v0, p0, Lcom/android/settings/model/Permission;->mFlags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/settings/model/Permission;->mFlags:I

    .line 69
    return-void
.end method

.method public setAppOpAllowed(Z)V
    .locals 0
    .param p1, "mAppOpAllowed"    # Z

    .line 136
    iput-boolean p1, p0, Lcom/android/settings/model/Permission;->mAppOpAllowed:Z

    .line 137
    return-void
.end method

.method public setGranted(Z)V
    .locals 0
    .param p1, "mGranted"    # Z

    .line 72
    iput-boolean p1, p0, Lcom/android/settings/model/Permission;->mGranted:Z

    .line 73
    return-void
.end method

.method public setRevokeOnUpgrade(Z)V
    .locals 1
    .param p1, "revokeOnUpgrade"    # Z

    .line 128
    if-eqz p1, :cond_0

    .line 129
    iget v0, p0, Lcom/android/settings/model/Permission;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/settings/model/Permission;->mFlags:I

    goto :goto_0

    .line 131
    :cond_0
    iget v0, p0, Lcom/android/settings/model/Permission;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/settings/model/Permission;->mFlags:I

    .line 133
    :goto_0
    return-void
.end method

.method public setUserFixed(Z)V
    .locals 1
    .param p1, "userFixed"    # Z

    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget v0, p0, Lcom/android/settings/model/Permission;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/model/Permission;->mFlags:I

    goto :goto_0

    .line 87
    :cond_0
    iget v0, p0, Lcom/android/settings/model/Permission;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/settings/model/Permission;->mFlags:I

    .line 89
    :goto_0
    return-void
.end method

.method public setUserSet(Z)V
    .locals 1
    .param p1, "userSet"    # Z

    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget v0, p0, Lcom/android/settings/model/Permission;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/model/Permission;->mFlags:I

    goto :goto_0

    .line 111
    :cond_0
    iget v0, p0, Lcom/android/settings/model/Permission;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/settings/model/Permission;->mFlags:I

    .line 113
    :goto_0
    return-void
.end method

.method public shouldRevokeOnUpgrade()Z
    .locals 1

    .line 124
    iget v0, p0, Lcom/android/settings/model/Permission;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
