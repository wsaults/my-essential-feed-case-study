//
//  LoadMoreCellController.swift
//  EssentialFeediOS
//
//  Created by Will Saults on 12/16/22.
//

import EssentialFeed
import UIKit

public class LoadMoreCellController: NSObject, UITableViewDataSource, UITableViewDelegate {
    private let cell = LoadMoreCell()
    private let callback: () -> Void
    private var offsetObserver: NSKeyValueObservation?
    
    public init(callback: @escaping () -> Void) {
        self.callback = callback
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        cell.selectionStyle = .none
        return cell
    }
    
    public func tableView(_ tableView: UITableView, willDisplay: UITableViewCell, forRowAt indexPath: IndexPath) {
        reloadIfNeeded()
        
        offsetObserver = tableView.observe(\.contentOffset, options: .new) { [weak self] tableView, _ in
            guard tableView.isDragging else { return }
            
            self?.reloadIfNeeded()
        }
    }
    
    public func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        offsetObserver = nil
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        reloadIfNeeded()
    }
    
    private func reloadIfNeeded() {
        guard !cell.isLoading else { return }
        
        callback()
    }
}

extension LoadMoreCellController: ResourceLoadingView, ResourceErrorView {
    public func display(_ viewModel: EssentialFeed.ResourceErrorViewModel) {
        cell.message = viewModel.message
    }
    
    public func display(_ viewModel: EssentialFeed.ResourceLoadingViewModel) {
        cell.isLoading = viewModel.isLoading
    }
}
