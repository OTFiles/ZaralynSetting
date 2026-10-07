.class public abstract Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;
.super Ljava/lang/Object;
.source "PermissionsSummaryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/PermissionsSummaryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PermissionsResultCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionSummaryResult(IIILjava/util/List;)V
    .locals 0
    .param p1, "standardGrantedPermissionCount"    # I
    .param p2, "requestedPermissionCount"    # I
    .param p3, "additionalGrantedPermissionCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p4, "grantedGroupLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    return-void
.end method
