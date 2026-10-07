.class public Lcom/android/settings/accounts/AccountFeatureProviderImpl;
.super Ljava/lang/Object;
.source "AccountFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/accounts/AccountFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .line 9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    return-object v0
.end method
