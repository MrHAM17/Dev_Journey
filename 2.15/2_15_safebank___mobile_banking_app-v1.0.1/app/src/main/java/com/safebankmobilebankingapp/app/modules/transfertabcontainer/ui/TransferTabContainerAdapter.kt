package com.safebankmobilebankingapp.app.modules.transfertabcontainer.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.databinding.RowTransfertabcontainerBinding
import com.safebankmobilebankingapp.app.modules.transfertabcontainer.`data`.model.TransfertabcontainerRowModel
import kotlin.Int
import kotlin.collections.List

class TransferTabContainerAdapter(
  var list: List<TransfertabcontainerRowModel>
) : RecyclerView.Adapter<TransferTabContainerAdapter.RowTransfertabcontainerVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTransfertabcontainerVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_transfertabcontainer,parent,false)
    return RowTransfertabcontainerVH(view)
  }

  override fun onBindViewHolder(holder: RowTransfertabcontainerVH, position: Int) {
    val transfertabcontainerRowModel = TransfertabcontainerRowModel()
    // TODO uncomment following line after integration with data source
    // val transfertabcontainerRowModel = list[position]
    holder.binding.transfertabcontainerRowModel = transfertabcontainerRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<TransfertabcontainerRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: TransfertabcontainerRowModel
    ) {
    }
  }

  inner class RowTransfertabcontainerVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTransfertabcontainerBinding = RowTransfertabcontainerBinding.bind(itemView)
  }
}
