.class public final synthetic Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$ZKxRzvcfxNqOKXdNkDOsoxL7i9I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/datausage/DataSaverBackend$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datausage/DataSaverBackend$1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$ZKxRzvcfxNqOKXdNkDOsoxL7i9I;->f$0:Lcom/android/settings/datausage/DataSaverBackend$1;

    iput p2, p0, Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$ZKxRzvcfxNqOKXdNkDOsoxL7i9I;->f$1:I

    iput p3, p0, Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$ZKxRzvcfxNqOKXdNkDOsoxL7i9I;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$ZKxRzvcfxNqOKXdNkDOsoxL7i9I;->f$0:Lcom/android/settings/datausage/DataSaverBackend$1;

    iget v1, p0, Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$ZKxRzvcfxNqOKXdNkDOsoxL7i9I;->f$1:I

    iget v2, p0, Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$ZKxRzvcfxNqOKXdNkDOsoxL7i9I;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/datausage/DataSaverBackend$1;->lambda$onUidPoliciesChanged$0(Lcom/android/settings/datausage/DataSaverBackend$1;II)V

    return-void
.end method
