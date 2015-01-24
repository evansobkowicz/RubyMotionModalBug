module Orientation

  def ipad?
    Device.ipad?
  end

  def shouldAutorotate
    true
  end

  def supportedInterfaceOrientations
    if ipad?
      UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskLandscapeRight
    else
      UIInterfaceOrientationMaskPortrait
    end
  end

  def preferredInterfaceOrientationForPresentation
    ipad? ? UIInterfaceOrientationMaskLandscapeLeft : UIInterfaceOrientationMaskPortrait
  end

end
