.class public Lcom/android/settings/network/ApnEditor;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApnEditor.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/ApnEditor$ApnData;,
        Lcom/android/settings/network/ApnEditor$ErrorDialog;
    }
.end annotation


# static fields
.field static final APN_INDEX:I = 0x2

.field static final CARRIER_ENABLED_INDEX:I = 0x11

.field static final MCC_INDEX:I = 0x9

.field static final MNC_INDEX:I = 0xa

.field static final NAME_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;

.field private static final sUIConfigurableItems:[Ljava/lang/String;


# instance fields
.field mApn:Landroid/support/v7/preference/EditTextPreference;

.field mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

.field mApnType:Landroid/support/v7/preference/EditTextPreference;

.field mAuthType:Landroid/support/v7/preference/ListPreference;

.field private mBearerInitialVal:I

.field mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

.field mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

.field private mCarrierUri:Landroid/net/Uri;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mDeletableApn:Z

.field mMcc:Landroid/support/v7/preference/EditTextPreference;

.field mMmsPort:Landroid/support/v7/preference/EditTextPreference;

.field mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

.field mMmsc:Landroid/support/v7/preference/EditTextPreference;

.field mMnc:Landroid/support/v7/preference/EditTextPreference;

.field mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

.field private mMvnoMatchDataStr:Ljava/lang/String;

.field mMvnoType:Landroid/support/v7/preference/ListPreference;

.field private mMvnoTypeStr:Ljava/lang/String;

.field mName:Landroid/support/v7/preference/EditTextPreference;

.field private mNewApn:Z

.field mPassword:Landroid/support/v7/preference/EditTextPreference;

.field mPort:Landroid/support/v7/preference/EditTextPreference;

.field mProtocol:Landroid/support/v7/preference/ListPreference;

.field mProxy:Landroid/support/v7/preference/EditTextPreference;

.field private mReadOnlyApn:Z

.field private mReadOnlyApnFields:[Ljava/lang/String;

.field private mReadOnlyApnTypes:[Ljava/lang/String;

.field mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

.field mServer:Landroid/support/v7/preference/EditTextPreference;

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mUser:Landroid/support/v7/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 68
    const-class v0, Lcom/android/settings/network/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    .line 149
    const-string v1, "_id"

    const-string v2, "name"

    const-string v3, "apn"

    const-string v4, "proxy"

    const-string v5, "port"

    const-string v6, "user"

    const-string v7, "server"

    const-string v8, "password"

    const-string v9, "mmsc"

    const-string v10, "mcc"

    const-string v11, "mnc"

    const-string v12, "numeric"

    const-string v13, "mmsproxy"

    const-string v14, "mmsport"

    const-string v15, "authtype"

    const-string v16, "type"

    const-string v17, "protocol"

    const-string v18, "carrier_enabled"

    const-string v19, "bearer"

    const-string v20, "bearer_bitmask"

    const-string v21, "roaming_protocol"

    const-string v22, "mvno_type"

    const-string v23, "mvno_match_data"

    const-string v24, "edited"

    const-string v25, "user_editable"

    const-string v26, "persistent"

    const-string v27, "read_only"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    .line 179
    const-string v1, "name"

    const-string v2, "apn"

    const-string v3, "proxy"

    const-string v4, "port"

    const-string v5, "user"

    const-string v6, "server"

    const-string v7, "password"

    const-string v8, "mmsc"

    const-string v9, "mmsproxy"

    const-string v10, "mmsport"

    const-string v11, "authtype"

    const-string v12, "type"

    const-string v13, "protocol"

    const-string v14, "carrier_enabled"

    const-string v15, "bearer"

    const-string v16, "bearer_bitmask"

    const-string v17, "roaming_protocol"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->sUIConfigurableItems:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    return-void
.end method

.method private apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "apnTypesArray1"    # [Ljava/lang/String;
    .param p2, "apnTypes2"    # Ljava/lang/String;

    .line 389
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 390
    return v1

    .line 393
    :cond_0
    invoke-static {p1}, Lcom/android/settings/network/ApnEditor;->hasAllApns([Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 397
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 398
    .local v0, "apnTypesList1":Ljava/util/List;
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "apnTypesArray2":[Ljava/lang/String;
    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 401
    .local v6, "apn":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 402
    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apnTypesMatch: true because match found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return v2

    .line 400
    .end local v6
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 407
    :cond_3
    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v4, "apnTypesMatch: false"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return v1

    .line 394
    .end local v0
    .end local v3
    :cond_4
    :goto_1
    return v2
.end method

.method private bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 650
    .local p1, "raw":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "values":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 652
    .local v1, "retVal":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 653
    .local v2, "first":Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 654
    .local v4, "bearer":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v5, v4}, Landroid/support/v14/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    .line 656
    .local v5, "bearerIndex":I
    if-eqz v2, :cond_0

    .line 657
    :try_start_0
    aget-object v6, v0, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    const/4 v2, 0x0

    goto :goto_1

    .line 662
    :catch_0
    move-exception v6

    goto :goto_2

    .line 660
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_3

    .line 662
    :goto_2
    nop

    .line 665
    .end local v4
    .end local v5
    :goto_3
    goto :goto_0

    .line 666
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 667
    .local v3, "val":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 668
    return-object v3

    .line 670
    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1178
    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private deleteApn()V
    .locals 3

    .line 1146
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1147
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1148
    new-instance v0, Lcom/android/settings/network/ApnEditor$ApnData;

    sget-object v1, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/android/settings/network/ApnEditor$ApnData;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    .line 1150
    :cond_0
    return-void
.end method

.method private disableAllFields()V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 482
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 483
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 484
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 485
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 487
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 488
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 489
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 490
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 491
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 492
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 493
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 494
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 495
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 496
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 497
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 498
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 499
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 500
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 501
    return-void
.end method

.method private disableFields([Ljava/lang/String;)V
    .locals 5
    .param p1, "apnFields"    # [Ljava/lang/String;

    .line 469
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 470
    .local v3, "apnField":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->getPreferenceFromFieldName(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 471
    .local v4, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v4, :cond_0

    .line 472
    invoke-virtual {v4, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 469
    .end local v3
    .end local v4
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 475
    :cond_1
    return-void
.end method

.method private fieldValidate(Ljava/lang/String;)Z
    .locals 6
    .param p1, "field"    # Ljava/lang/String;

    .line 1218
    sget-object v0, Lcom/android/settings/network/ApnEditor;->sUIConfigurableItems:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1219
    .local v4, "tableField":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1220
    const/4 v0, 0x1

    return v0

    .line 1218
    .end local v4
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1222
    :cond_1
    sget-object v0, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not configurable"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    return v2
.end method

.method private findIndexOfKey(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1210
    sget-object v1, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1211
    return v0

    .line 1209
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1214
    .end local v0
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method static formatInteger(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 349
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 350
    .local v0, "intValue":I
    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 351
    .end local v0
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-object p0
.end method

.method private getPreferenceFromFieldName(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p1, "apnField"    # Ljava/lang/String;

    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0    # 0x556d58e2
    const-string v0, "authtype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_1    # 0x4889ba9b
    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_2    # 0x46909dd4
    const-string v0, "mmsport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_3    # 0x65fca6e
    const-string v0, "proxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_4    # 0x36ebcb
    const-string v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_5    # 0x368f3a
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_6    # 0x349881
    const-string v0, "port"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_7    # 0x337a8b
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_8    # 0x3333f0
    const-string v0, "mmsc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_9    # 0x1a6e2
    const-string v0, "mnc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_a    # 0x1a58d
    const-string v0, "mcc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b    # 0x17a1f
    const-string v0, "apn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_c    # -0x1f00dbe7
    const-string v0, "mvno_match_data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_d    # -0x35fdd0bd
    const-string v0, "server"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_e    # -0x3af57168
    const-string v0, "protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_f    # -0x3df71002
    const-string v0, "roaming_protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_10    # -0x49581165
    const-string v0, "bearer_bitmask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_11    # -0x5307fc9f
    const-string v0, "bearer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_12    # -0x61c86706
    const-string v0, "carrier_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_13    # -0x747b9085
    const-string v0, "mmsproxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_14    # -0x7f4962d1
    const-string v0, "mvno_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 460
    const/4 v0, 0x0

    return-object v0

    .line 458
    :pswitch_0    # 0x14
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 456
    :pswitch_1    # 0x13
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    return-object v0

    .line 454
    :pswitch_2    # 0x12 0x11
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    return-object v0

    .line 451
    :pswitch_3    # 0x10
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    return-object v0

    .line 449
    :pswitch_4    # 0xf
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    return-object v0

    .line 447
    :pswitch_5    # 0xe
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    return-object v0

    .line 445
    :pswitch_6    # 0xd
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    return-object v0

    .line 443
    :pswitch_7    # 0xc
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 441
    :pswitch_8    # 0xb
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 439
    :pswitch_9    # 0xa
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 437
    :pswitch_a    # 0x9
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 435
    :pswitch_b    # 0x8
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 433
    :pswitch_c    # 0x7
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 431
    :pswitch_d    # 0x6
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 429
    :pswitch_e    # 0x5
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 427
    :pswitch_f    # 0x4
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 425
    :pswitch_10    # 0x3
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 423
    :pswitch_11    # 0x2
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 421
    :pswitch_12    # 0x1
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    .line 419
    :pswitch_13    # 0x0
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7f4962d1 -> :sswitch_14
        -0x747b9085 -> :sswitch_13
        -0x61c86706 -> :sswitch_12
        -0x5307fc9f -> :sswitch_11
        -0x49581165 -> :sswitch_10
        -0x3df71002 -> :sswitch_f
        -0x3af57168 -> :sswitch_e
        -0x35fdd0bd -> :sswitch_d
        -0x1f00dbe7 -> :sswitch_c
        0x17a1f -> :sswitch_b
        0x1a58d -> :sswitch_a
        0x1a6e2 -> :sswitch_9
        0x3333f0 -> :sswitch_8
        0x337a8b -> :sswitch_7
        0x349881 -> :sswitch_6
        0x368f3a -> :sswitch_5
        0x36ebcb -> :sswitch_4
        0x65fca6e -> :sswitch_3
        0x46909dd4 -> :sswitch_2
        0x4889ba9b -> :sswitch_1
        0x556d58e2 -> :sswitch_0

    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13    # 0x0
        :pswitch_12    # 0x1
        :pswitch_11    # 0x2
        :pswitch_10    # 0x3
        :pswitch_f    # 0x4
        :pswitch_e    # 0x5
        :pswitch_d    # 0x6
        :pswitch_c    # 0x7
        :pswitch_b    # 0x8
        :pswitch_a    # 0x9
        :pswitch_9    # 0xa
        :pswitch_8    # 0xb
        :pswitch_7    # 0xc
        :pswitch_6    # 0xd
        :pswitch_5    # 0xe
        :pswitch_4    # 0xf
        :pswitch_3    # 0x10
        :pswitch_2    # 0x11
        :pswitch_2    # 0x12
        :pswitch_1    # 0x13
        :pswitch_0    # 0x14
    .end packed-switch
.end method

.method private getUserEnteredApnType()Ljava/lang/String;
    .locals 9

    .line 1228
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1229
    .local v0, "userEnteredApnType":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1230
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*"

    .line 1231
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 1232
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1234
    .local v1, "editableApnTypes":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1235
    .local v2, "readOnlyApnTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 1236
    .local v3, "first":Z
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants;->APN_TYPES:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 1238
    .local v7, "apnType":Ljava/lang/String;
    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "ia"

    .line 1239
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "emergency"

    .line 1240
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1241
    if-eqz v3, :cond_2

    .line 1242
    const/4 v3, 0x0

    goto :goto_1

    .line 1244
    :cond_2
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    :goto_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    .end local v7
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1249
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1250
    sget-object v4, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUserEnteredApnType: changed apn type to editable apn types: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    .end local v1
    .end local v2
    .end local v3
    :cond_5
    return-object v0
.end method

.method static hasAllApns([Ljava/lang/String;)Z
    .locals 8
    .param p0, "apnTypes"    # [Ljava/lang/String;

    .line 362
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 363
    return v1

    .line 366
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 367
    .local v0, "apnList":Ljava/util/List;
    const-string v2, "*"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 368
    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "hasAllApns: true because apnList.contains(PhoneConstants.APN_TYPE_ALL)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return v3

    .line 371
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants;->APN_TYPES:[Ljava/lang/String;

    array-length v4, v2

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    .line 372
    .local v6, "apn":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 373
    return v1

    .line 371
    .end local v6
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 377
    :cond_3
    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "hasAllApns: true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return v3
.end method

.method public static synthetic lambda$updateApnDataToDatabase$0(Lcom/android/settings/network/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1080
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1082
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1083
    .local v0, "newUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 1084
    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t add a new apn to database "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    .end local v0
    :cond_0
    goto :goto_0

    .line 1088
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1091
    :goto_0
    return-void
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "newValue"    # Ljava/lang/String;

    .line 674
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 675
    .local v0, "mvnoIndex":I
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 677
    .local v1, "oldValue":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 678
    return-object v2

    .line 680
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f03005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 681
    .local v3, "values":[Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    .line 683
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v7, "mvno_match_data"

    .line 684
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v5

    .line 685
    .local v4, "mvnoMatchDataUneditable":Z
    :goto_1
    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    invoke-virtual {v7, v5}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 686
    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 687
    aget-object v5, v3, v0

    const-string v6, "SPN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 688
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_3

    .line 689
    :cond_4
    aget-object v5, v3, v0

    const-string v6, "IMSI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 690
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v6, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v5

    .line 691
    .local v5, "numeric":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 692
    .end local v5
    goto :goto_3

    :cond_5
    aget-object v5, v3, v0

    const-string v6, "GID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 693
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_3

    .line 694
    :cond_6
    aget-object v5, v3, v0

    const-string v6, "ICCID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 695
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 696
    sget-object v5, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMvnoMatchDataStr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 703
    :cond_7
    :goto_3
    :try_start_0
    aget-object v5, v3, v0

    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 704
    :catch_0
    move-exception v5

    .line 705
    .local v5, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-object v2
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;
    .locals 4
    .param p1, "raw"    # Ljava/lang/String;
    .param p2, "protocol"    # Landroid/support/v7/preference/ListPreference;

    .line 636
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 637
    .local v0, "protocolIndex":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 638
    return-object v1

    .line 640
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v0

    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 643
    :catch_0
    move-exception v3

    .line 644
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-object v1
.end method

.method private setAppData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    .line 1202
    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnEditor;->findIndexOfKey(Ljava/lang/String;)I

    move-result v0

    .line 1203
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1204
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v1, v0, p2}, Lcom/android/settings/network/ApnEditor$ApnData;->setObject(ILjava/lang/Object;)V

    .line 1206
    :cond_0
    return-void
.end method

.method private setDefaultData()V
    .locals 7

    .line 1182
    const-string v0, "carrier_config"

    .line 1183
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1184
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v0, :cond_1

    .line 1185
    iget v1, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1186
    .local v1, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_1

    .line 1187
    const-string v2, "apn_default_values_strings_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1189
    .local v2, "defaultValues":Landroid/os/PersistableBundle;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1190
    invoke-virtual {v2}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1191
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1192
    .local v5, "key":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/settings/network/ApnEditor;->fieldValidate(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1193
    invoke-virtual {v2, v5}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/settings/network/ApnEditor;->setAppData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1195
    .end local v5
    :cond_0
    goto :goto_0

    .line 1199
    .end local v1
    .end local v2
    .end local v3
    :cond_1
    return-void
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 1153
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1156
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 1157
    .local v0, "password":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1158
    const/16 v2, 0x2a

    aput-char v2, v0, v1

    .line 1157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1160
    .end local v1
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 1154
    .end local v0
    :cond_2
    :goto_1
    sget-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object v0
.end method

.method private updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1079
    new-instance v0, Lcom/android/settings/network/-$$Lambda$ApnEditor$1vSLgWOnd4pMuFU2qFaSz0HXNw8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/network/-$$Lambda$ApnEditor$1vSLgWOnd4pMuFU2qFaSz0HXNw8;-><init>(Lcom/android/settings/network/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 1092
    return-void
.end method


# virtual methods
.method fillUI(Z)V
    .locals 8
    .param p1, "firstTime"    # Z

    .line 510
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    .line 512
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v3, v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 513
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 514
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 515
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 516
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 517
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 518
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 519
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 520
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 521
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 522
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 523
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 524
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v6, 0xf

    invoke-virtual {v3, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 525
    iget-boolean v2, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-eqz v2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, "numeric":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 530
    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, "mcc":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 534
    .local v4, "mnc":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 535
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 536
    iput-object v4, p0, Lcom/android/settings/network/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 537
    iput-object v3, p0, Lcom/android/settings/network/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 540
    .end local v2
    .end local v3
    .end local v4
    :cond_0
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v3, 0xe

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 541
    .local v2, "authVal":I
    if-eq v2, v4, :cond_1

    .line 542
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    .line 544
    :cond_1
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 547
    :goto_0
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 548
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 549
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 550
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v4, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    .line 552
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 553
    .local v3, "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v5, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 554
    .local v4, "bearerBitmask":I
    if-nez v4, :cond_3

    .line 555
    iget v5, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    if-nez v5, :cond_6

    .line 556
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 559
    :cond_3
    move v5, v4

    move v4, v1

    .line 560
    .local v4, "i":I
    .local v5, "bearerBitmask":I
    :goto_2
    if-eqz v5, :cond_5

    .line 561
    and-int/lit8 v6, v5, 0x1

    if-ne v6, v1, :cond_4

    .line 562
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_4
    shr-int/lit8 v5, v5, 0x1

    .line 565
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 569
    .end local v4
    :cond_5
    move v4, v5

    .end local v5
    .local v4, "bearerBitmask":I
    :cond_6
    :goto_3
    iget v5, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 571
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_7
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v5, v3}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 575
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 576
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/EditTextPreference;->setEnabled(Z)V

    .line 577
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0x16

    invoke-virtual {v6, v7}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 578
    iget-boolean v5, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 579
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 580
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 582
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v6, v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->getLocalizedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 583
    .local v5, "localizedName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 584
    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 588
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :cond_9
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/network/ApnEditor;->formatInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/network/ApnEditor;->formatInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 603
    .local v2, "authVal":Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 604
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 605
    .local v3, "authValIndex":I
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 607
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 608
    .local v4, "values":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 609
    .end local v3
    .end local v4
    goto :goto_4

    .line 610
    :cond_a
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    sget-object v4, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 613
    :goto_4
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    .line 615
    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 614
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    .line 617
    invoke-virtual {v4}, Landroid/support/v14/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 616
    invoke-virtual {v3, v4}, Landroid/support/v14/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    .line 619
    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 618
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 622
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 623
    .local v3, "ceEditable":Z
    if-eqz v3, :cond_b

    .line 624
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_5

    .line 626
    :cond_b
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 628
    :goto_5
    return-void
.end method

.method getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/ApnEditor$ApnData;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1284
    const/4 v0, 0x0

    .line 1285
    .local v0, "apnData":Lcom/android/settings/network/ApnEditor$ApnData;
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1291
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 1292
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1293
    new-instance v3, Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-direct {v3, p1, v1}, Lcom/android/settings/network/ApnEditor$ApnData;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    goto :goto_2

    .line 1295
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 1285
    :catch_0
    move-exception v2

    :try_start_1
    throw v2

    .line 1295
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw v3

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1297
    .end local v1
    :cond_3
    if-nez v0, :cond_4

    .line 1298
    sget-object v1, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get apnData from Uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :cond_4
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 505
    const/16 v0, 0xd

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 233
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 235
    const v0, 0x7f150011

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->addPreferencesFromResource(I)V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 238
    const-string v0, "apn_name"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    .line 239
    const-string v0, "apn_apn"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    .line 240
    const-string v0, "apn_http_proxy"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    .line 241
    const-string v0, "apn_http_port"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    .line 242
    const-string v0, "apn_user"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    .line 243
    const-string v0, "apn_server"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    .line 244
    const-string v0, "apn_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    .line 245
    const-string v0, "apn_mms_proxy"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    .line 246
    const-string v0, "apn_mms_port"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    .line 247
    const-string v0, "apn_mmsc"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    .line 248
    const-string v0, "apn_mcc"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    .line 249
    const-string v0, "apn_mnc"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    .line 250
    const-string v0, "apn_type"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnType:Landroid/support/v7/preference/EditTextPreference;

    .line 251
    const-string v0, "auth_type"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    .line 252
    const-string v0, "apn_protocol"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    .line 253
    const-string v0, "apn_roaming_protocol"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    .line 254
    const-string v0, "carrier_enabled"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    .line 255
    const-string v0, "bearer_multi"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/MultiSelectListPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    .line 256
    const-string v0, "mvno_type"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    .line 257
    const-string v0, "mvno_match_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "action":Ljava/lang/String;
    const-string v2, "sub_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    .line 264
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    .line 265
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 266
    iput-object v3, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    .line 268
    const-string v3, "carrier_config"

    .line 269
    invoke-virtual {p0, v3}, Lcom/android/settings/network/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CarrierConfigManager;

    .line 270
    .local v3, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v3, :cond_1

    .line 271
    iget v4, p0, Lcom/android/settings/network/ApnEditor;->mSubId:I

    invoke-virtual {v3, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 272
    .local v4, "b":Landroid/os/PersistableBundle;
    if-eqz v4, :cond_1

    .line 273
    const-string v5, "read_only_apn_types_string_array"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 275
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 276
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 277
    .local v8, "apnType":Ljava/lang/String;
    sget-object v9, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate: read only APN type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v8
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 280
    :cond_0
    const-string v5, "read_only_apn_fields_string_array"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    .line 285
    .end local v4
    :cond_1
    const/4 v4, 0x0

    .line 286
    .local v4, "uri":Landroid/net/Uri;
    const-string v5, "android.intent.action.EDIT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 287
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 288
    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 289
    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Edit request not for carrier table. Uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 291
    return-void

    .line 293
    :cond_2
    const-string v5, "android.intent.action.INSERT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 294
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    .line 295
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 296
    sget-object v2, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert request not for carrier table. Uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 298
    return-void

    .line 300
    :cond_3
    iput-boolean v6, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    .line 301
    const-string v5, "mvno_type"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    .line 302
    const-string v5, "mvno_match_data"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    .line 311
    :cond_4
    if-eqz v4, :cond_5

    .line 312
    invoke-virtual {p0, v4}, Lcom/android/settings/network/ApnEditor;->getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/ApnEditor$ApnData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    goto :goto_1

    .line 314
    :cond_5
    new-instance v5, Lcom/android/settings/network/ApnEditor$ApnData;

    sget-object v7, Lcom/android/settings/network/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v7, v7

    invoke-direct {v5, v7}, Lcom/android/settings/network/ApnEditor$ApnData;-><init>(I)V

    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    .line 315
    const-string v5, "android.intent.action.INSERT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 316
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->setDefaultData()V

    .line 320
    :cond_6
    :goto_1
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/settings/network/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/settings/network/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 322
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v7, 0x17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v6, :cond_7

    move v5, v6

    goto :goto_2

    :cond_7
    move v5, v2

    .line 325
    .local v5, "isUserEdited":Z
    :goto_2
    sget-object v7, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate: EDITED "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    if-nez v5, :cond_9

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v8, 0x18

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v9, 0xf

    .line 328
    invoke-virtual {v8, v9}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/network/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v8, 0x1a

    .line 329
    invoke-virtual {v7, v8}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v6, :cond_9

    .line 330
    :cond_8
    sget-object v7, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    const-string v8, "onCreate: apnTypesMatch; read-only APN"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iput-boolean v6, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    .line 332
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->disableAllFields()V

    goto :goto_3

    .line 333
    :cond_9
    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 334
    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settings/network/ApnEditor;->disableFields([Ljava/lang/String;)V

    .line 337
    :cond_a
    :goto_3
    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    const/16 v8, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v6, :cond_b

    move v7, v6

    goto :goto_4

    :cond_b
    move v7, v2

    :goto_4
    iput-boolean v7, p0, Lcom/android/settings/network/ApnEditor;->mDeletableApn:Z

    .line 339
    move v7, v2

    .local v7, "i":I
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    if-ge v7, v8, :cond_c

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 339
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 343
    .end local v7
    :cond_c
    if-nez p1, :cond_d

    move v2, v6

    nop

    :cond_d
    invoke-virtual {p0, v2}, Lcom/android/settings/network/ApnEditor;->fillUI(Z)V

    .line 344
    return-void

    .line 304
    .end local v5
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 305
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 763
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 765
    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/ApnEditor;->mDeletableApn:Z

    if-eqz v0, :cond_0

    .line 766
    const/4 v0, 0x1

    const v2, 0x7f1208bd

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f080157

    .line 767
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 769
    :cond_0
    const/4 v0, 0x2

    const v2, 0x7f1208ca

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x108004e

    .line 770
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 771
    const/4 v0, 0x3

    const v2, 0x7f1208bc

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    .line 772
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 773
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 813
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 814
    :cond_0
    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    .line 822
    return v1

    .line 816
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->validateAndSaveApnData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 817
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 819
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 777
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 791
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 788
    :pswitch_0    # 0x3
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 789
    return v1

    .line 783
    :pswitch_1    # 0x2
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->validateAndSaveApnData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 786
    :cond_0
    return v1

    .line 779
    :pswitch_2    # 0x1
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->deleteApn()V

    .line 780
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->finish()V

    .line 781
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 711
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, "key":Ljava/lang/String;
    const-string v1, "auth_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 714
    :try_start_0
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 715
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 717
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 718
    .local v3, "values":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 721
    .end local v1
    .end local v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 719
    :catch_0
    move-exception v1

    .line 720
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v2

    .line 722
    .end local v1
    :cond_0
    const-string v1, "apn_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 723
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;

    move-result-object v1

    .line 724
    .local v1, "protocol":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 725
    return v2

    .line 727
    :cond_1
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 729
    .end local v1
    goto/16 :goto_2

    :cond_2
    const-string v1, "apn_roaming_protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 730
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/network/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)Ljava/lang/String;

    move-result-object v1

    .line 731
    .restart local v1
    if-nez v1, :cond_3

    .line 732
    return v2

    .line 734
    :cond_3
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 735
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 736
    .end local v1
    goto/16 :goto_2

    :cond_4
    const-string v1, "bearer_multi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 737
    move-object v1, p2

    check-cast v1, Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, "bearer":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 739
    return v2

    .line 741
    :cond_5
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    move-object v3, p2

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 742
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 743
    .end local v1
    goto :goto_2

    :cond_6
    const-string v1, "mvno_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 744
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, "mvno":Ljava/lang/String;
    if-nez v1, :cond_7

    .line 746
    return v2

    .line 748
    :cond_7
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 749
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 750
    .end local v1
    goto :goto_2

    :cond_8
    const-string v1, "apn_password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 751
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    if-eqz p2, :cond_9

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_9
    const-string v2, ""

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 752
    :cond_a
    const-string v1, "carrier_enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_2

    .line 755
    :cond_b
    if-eqz p2, :cond_c

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_c
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 758
    :goto_2
    const/4 v1, 0x1

    return v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 797
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 798
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 799
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 800
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 801
    return-void
.end method

.method setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z
    .locals 3
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I
    .param p4, "assumeDiff"    # Z
    .param p5, "index"    # I

    .line 863
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0, p5}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 871
    .local v0, "valueFromLocalCache":Ljava/lang/Integer;
    if-nez p4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 872
    .local v1, "isDiff":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 873
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 875
    :cond_2
    return v1
.end method

.method setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "assumeDiff"    # Z
    .param p5, "index"    # I

    .line 837
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v0, p5}, Lcom/android/settings/network/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "valueFromLocalCache":Ljava/lang/String;
    if-nez p4, :cond_2

    .line 845
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 846
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 848
    .local v1, "isDiff":Z
    :goto_1
    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    .line 849
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :cond_3
    return v1
.end method

.method showError()V
    .locals 0

    .line 1142
    invoke-static {p0}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/network/ApnEditor;)V

    .line 1143
    return-void
.end method

.method validateAndSaveApnData()Z
    .locals 20

    .line 889
    move-object/from16 v10, p0

    iget-boolean v0, v10, Lcom/android/settings/network/ApnEditor;->mReadOnlyApn:Z

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    .line 890
    return v11

    .line 893
    :cond_0
    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 894
    .local v12, "name":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 895
    .local v13, "apn":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 896
    .local v14, "mcc":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 898
    .local v15, "mnc":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->validateApnData()Ljava/lang/String;

    move-result-object v16

    .line 899
    .local v16, "errorMsg":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v16, :cond_1

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->showError()V

    .line 901
    return v6

    .line 904
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v9, v0

    .line 907
    .local v9, "values":Landroid/content/ContentValues;
    iget-boolean v7, v10, Lcom/android/settings/network/ApnEditor;->mNewApn:Z

    .line 908
    .local v7, "callUpdate":Z
    const-string v2, "name"

    const/4 v5, 0x1

    move-object v0, v10

    move-object v1, v9

    move-object v3, v12

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 914
    const-string v2, "apn"

    const/4 v5, 0x2

    move-object v3, v13

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 920
    const-string v2, "proxy"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mProxy:Landroid/support/v7/preference/EditTextPreference;

    .line 922
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    .line 920
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 926
    const-string v2, "port"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mPort:Landroid/support/v7/preference/EditTextPreference;

    .line 928
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    .line 926
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 932
    const-string v2, "mmsproxy"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mMmsProxy:Landroid/support/v7/preference/EditTextPreference;

    .line 934
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc

    .line 932
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 938
    const-string v2, "mmsport"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mMmsPort:Landroid/support/v7/preference/EditTextPreference;

    .line 940
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xd

    .line 938
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 944
    const-string v2, "user"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mUser:Landroid/support/v7/preference/EditTextPreference;

    .line 946
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    .line 944
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 950
    const-string v2, "server"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mServer:Landroid/support/v7/preference/EditTextPreference;

    .line 952
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    .line 950
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 956
    const-string v2, "password"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mPassword:Landroid/support/v7/preference/EditTextPreference;

    .line 958
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    .line 956
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 962
    const-string v2, "mmsc"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mMmsc:Landroid/support/v7/preference/EditTextPreference;

    .line 964
    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8

    .line 962
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 968
    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mAuthType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 969
    .local v8, "authVal":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 970
    const-string v2, "authtype"

    .line 972
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0xe

    .line 970
    move-object v0, v10

    move-object v1, v9

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    .line 977
    .end local v7
    .local v0, "callUpdate":Z
    move v7, v0

    .end local v0
    .restart local v7
    :cond_2
    const-string v2, "protocol"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mProtocol:Landroid/support/v7/preference/ListPreference;

    .line 979
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    .line 977
    move-object v0, v10

    move-object v1, v9

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 983
    const-string v2, "roaming_protocol"

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mRoamingProtocol:Landroid/support/v7/preference/ListPreference;

    .line 985
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x14

    .line 983
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 989
    const-string v2, "type"

    .line 991
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xf

    .line 989
    move-object v0, v10

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 995
    const-string v2, "mcc"

    const/16 v5, 0x9

    move-object v3, v14

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 1001
    const-string v2, "mnc"

    const/16 v5, 0xa

    move-object v3, v15

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    .line 1007
    const-string v0, "numeric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1010
    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1011
    const-string v0, "current"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1015
    :cond_3
    iget-object v0, v10, Lcom/android/settings/network/ApnEditor;->mBearerMulti:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v5

    .line 1016
    .local v5, "bearerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1017
    .local v0, "bearerBitmask":I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1018
    .local v2, "bearer":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 1019
    const/4 v0, 0x0

    .line 1020
    goto :goto_1

    .line 1022
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v3

    or-int/2addr v0, v3

    .line 1024
    .end local v2
    goto :goto_0

    .line 1025
    .end local v0
    .local v4, "bearerBitmask":I
    :cond_5
    :goto_1
    move v4, v0

    const-string v2, "bearer_bitmask"

    const/16 v17, 0x13

    move-object v0, v10

    move-object v1, v9

    move v3, v4

    move v11, v4

    move v4, v7

    .end local v4
    .local v11, "bearerBitmask":I
    move-object/from16 v18, v5

    move/from16 v5, v17

    .end local v5
    .local v18, "bearerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v7

    .line 1032
    if-eqz v11, :cond_8

    iget v0, v10, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    if-nez v0, :cond_6

    goto :goto_2

    .line 1034
    :cond_6
    iget v0, v10, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    invoke-static {v11, v0}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1035
    iget v0, v10, Lcom/android/settings/network/ApnEditor;->mBearerInitialVal:I

    goto :goto_3

    .line 1040
    :cond_7
    move v3, v6

    goto :goto_4

    .line 1033
    :cond_8
    :goto_2
    const/4 v0, 0x0

    .line 1040
    .local v0, "bearerVal":I
    .local v3, "bearerVal":I
    :goto_3
    move v3, v0

    .line 1042
    .end local v0
    :goto_4
    const-string v2, "bearer"

    const/16 v5, 0x12

    move-object v0, v10

    move-object v1, v9

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    .line 1048
    .end local v7
    .local v0, "callUpdate":Z
    const-string v6, "mvno_type"

    iget-object v1, v10, Lcom/android/settings/network/ApnEditor;->mMvnoType:Landroid/support/v7/preference/ListPreference;

    .line 1050
    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v1, 0x15

    .line 1048
    move-object v4, v10

    move-object v5, v9

    move-object v2, v8

    move v8, v0

    .end local v8
    .local v2, "authVal":Ljava/lang/String;
    move-object/from16 v19, v9

    move v9, v1

    .end local v9
    .local v19, "values":Landroid/content/ContentValues;
    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    .line 1054
    const-string v6, "mvno_match_data"

    iget-object v1, v10, Lcom/android/settings/network/ApnEditor;->mMvnoMatchData:Landroid/support/v7/preference/EditTextPreference;

    .line 1056
    invoke-virtual {v1}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x16

    .line 1054
    move-object/from16 v5, v19

    move v8, v0

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/network/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    .line 1060
    const-string v6, "carrier_enabled"

    .line 1062
    iget-object v1, v10, Lcom/android/settings/network/ApnEditor;->mCarrierEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v7

    const/16 v9, 0x11

    .line 1060
    move-object v4, v10

    move-object/from16 v5, v19

    move v8, v0

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/network/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    .line 1066
    const-string v1, "edited"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v4, v19

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1068
    .end local v19
    .local v4, "values":Landroid/content/ContentValues;
    if-eqz v0, :cond_a

    .line 1069
    iget-object v1, v10, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v1, v10, Lcom/android/settings/network/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    goto :goto_5

    :cond_9
    iget-object v1, v10, Lcom/android/settings/network/ApnEditor;->mApnData:Lcom/android/settings/network/ApnEditor$ApnData;

    invoke-virtual {v1}, Lcom/android/settings/network/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 1070
    .local v1, "uri":Landroid/net/Uri;
    :goto_5
    invoke-direct {v10, v1, v4}, Lcom/android/settings/network/ApnEditor;->updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1075
    .end local v1
    :cond_a
    const/4 v1, 0x1

    return v1
.end method

.method validateApnData()Ljava/lang/String;
    .locals 15

    .line 1101
    const/4 v0, 0x0

    .line 1103
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor;->mName:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1104
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/network/ApnEditor;->mApn:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1105
    .local v2, "apn":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/network/ApnEditor;->mMcc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1106
    .local v3, "mcc":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/network/ApnEditor;->mMnc:Landroid/support/v7/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1108
    .local v4, "mnc":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_0

    .line 1109
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f1205fa

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1110
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1111
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f1205f7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1112
    :cond_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    goto :goto_0

    .line 1114
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const v7, 0xfffe

    and-int/2addr v5, v7

    if-eq v5, v6, :cond_5

    .line 1115
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f1205f9

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1113
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f1205f8

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1118
    :cond_5
    :goto_1
    if-nez v0, :cond_8

    .line 1121
    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 1122
    invoke-direct {p0}, Lcom/android/settings/network/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/android/settings/network/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1124
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/settings/network/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    move v10, v9

    :goto_2
    if-ge v10, v8, :cond_6

    aget-object v11, v7, v10

    .line 1125
    .local v11, "type":Ljava/lang/String;
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    sget-object v12, Lcom/android/settings/network/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "validateApnData: appending type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    .end local v11
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1129
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lt v7, v6, :cond_7

    .line 1130
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1132
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1205f6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    .end local v5
    :cond_8
    return-object v0
.end method
