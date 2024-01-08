package com.safebankmobilebankingapp.app.modules.transferrequest.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.databinding.RowTransferrequestBinding
import com.safebankmobilebankingapp.app.modules.transferrequest.`data`.model.TransferrequestRowModel
import kotlin.Int
import kotlin.collections.List

class TransferRequestAdapter(
  var list: List<TransferrequestRowModel>
) : RecyclerView.Adapter<TransferRequestAdapter.RowTransferrequestVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTransferrequestVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_transferrequest,parent,false)
    return RowTransferrequestVH(view)
  }

  override fun onBindViewHolder(holder: RowTransferrequestVH, position: Int) {
    val transferrequestRowModel = TransferrequestRowModel()
    // TODO uncomment following line after integration with data source
    // val transferrequestRowModel = list[position]
    holder.binding.transferrequestRowModel = transferrequestRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<TransferrequestRowModel>) {
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
      item: TransferrequestRowModel
    ) {
    }
  }

  inner class RowTransferrequestVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTransferrequestBinding = RowTransferrequestBinding.bind(itemView)
  }
}
