.class public Lcom/android/settings/accounts/AccountRestrictionHelper;
.super Ljava/lang/Object;
.source "AccountRestrictionHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/settings/accounts/AccountRestrictionHelper;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static showAccount([Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 5
    .param p0, "authorities"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 66
    .local p1, "auths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 67
    .local v0, "showAccount":Z
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 68
    const/4 v0, 0x0

    .line 69
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 70
    .local v3, "requestedAuthority":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    const/4 v1, 0x1

    return v1

    .line 69
    .end local v3
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_1
    return v0
.end method


# virtual methods
.method public createAccessiblePreferenceCategory(Landroid/content/Context;)Lcom/android/settings/AccessiblePreferenceCategory;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/android/settings/AccessiblePreferenceCategory;

    invoke-direct {v0, p1}, Lcom/android/settings/AccessiblePreferenceCategory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public enforceRestrictionOnPreference(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V
    .locals 1
    .param p1, "preference"    # Lcom/android/settingslib/RestrictedPreference;
    .param p2, "userRestriction"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 41
    if-nez p1, :cond_0

    .line 42
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/accounts/AccountRestrictionHelper;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 49
    :goto_0
    return-void
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 52
    iget-object v0, p0, Lcom/android/settings/accounts/AccountRestrictionHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
