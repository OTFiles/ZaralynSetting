.class public final synthetic Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$j2wn_SRBsrC7ziAxKgN6he5fFRk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$j2wn_SRBsrC7ziAxKgN6he5fFRk;->f$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    iput-object p2, p0, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$j2wn_SRBsrC7ziAxKgN6he5fFRk;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$j2wn_SRBsrC7ziAxKgN6he5fFRk;->f$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    iget-object v1, p0, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$j2wn_SRBsrC7ziAxKgN6he5fFRk;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->lambda$scheduleUpdateHardKeyboards$1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/content/Context;)V

    return-void
.end method
